# variables that can be overriden
# OL Oracle Linux
# US Ubuntu Server Linux

variable "OS" { }
variable "hostname" { }
variable "ipaddr" { }
variable "gateway" { }
variable "dns" { } 
variable "memoryMB" { }
variable "cpu" { } 
variable "Remote_KVM_NIC" { }
variable "Remote_KVM_HOST" { }
variable "Remote_KVM_VM_Path" { default = "/data/VMs" }
variable "Template_Image" { }

# 100GB for each additional data disk
variable "diskdata1Bytes" { default = 1024*1024*1024*100 }
variable "diskdata2Bytes" { default = 1024*1024*1024*100 }

# proveider repos
terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = "0.7.0"
    }
  }
}

# add the provider
provider "libvirt" {
 #virsh -c qemu+ssh://op@172.16.0.3/system #test ssh connect
 uri  = "qemu+ssh://${var.Remote_KVM_HOST}/system"
}

# create pool
resource "libvirt_pool" "general" {
 name = "${var.hostname}_pool"
 type = "dir"
 path = "${var.Remote_KVM_VM_Path}/${var.hostname}_pool/"
}

# crate image
resource "libvirt_volume" "image-qcow2" {
 name = "${var.hostname}_image.qcow2"
 pool = libvirt_pool.general.name
 source = "${var.Template_Image}"
 format = "qcow2"
}

# extra data disk for data1
resource "libvirt_volume" "disk_data1" {
  name           = "${var.hostname}-disk-data1"
  pool           = libvirt_pool.general.name
  size           = var.diskdata1Bytes
  format         = "qcow2"
}
# extra data disk for data2
resource "libvirt_volume" "disk_data2" {
  name           = "${var.hostname}-disk-data2"
  pool           = libvirt_pool.general.name
  size           = var.diskdata2Bytes
  format         = "qcow2"
}

# add cloudinit disk to pool
resource "libvirt_cloudinit_disk" "commoninit" {
  name = "commoninit.iso"
  pool = libvirt_pool.general.name
  user_data = data.template_file.user_data.rendered
  network_config = data.template_file.network_config.rendered
}

# read the configuration
data "template_file" "user_data" {
  template = file("${path.module}/../cloud_init/${var.OS}/cloud_init.cfg")
  vars = {
    hostname = "${var.hostname}"
 }
}

data "template_file" "network_config" {
  template = file("${path.module}/../ip/${var.OS}/ip_static.cfg")
  vars = {
    ipaddr = var.ipaddr
    gateway = var.gateway
    dns = var.dns
  }
}

# Define KVM domain to  create 
resource "libvirt_domain" "general-domain" {
  name = "${var.hostname}"
  memory = "${var.memoryMB}"
  vcpu = "${var.cpu}"
  disk { volume_id = libvirt_volume.image-qcow2.id }
  disk { volume_id = libvirt_volume.disk_data1.id }
  disk { volume_id = libvirt_volume.disk_data2.id }

# set to default libvirt network
network_interface {
    network_name = "${var.Remote_KVM_NIC}"
}

# add the cloud init disk to share user data
cloudinit = libvirt_cloudinit_disk.commoninit.id

console {
    type = "pty"
    target_type = "serial"
    source_service = "0"
    target_port = "0"
}

cpu { 
    mode = "host-model"
}

graphics {
    type = "vnc"
    listen_type = "address"
    autoport = true
 }
}
