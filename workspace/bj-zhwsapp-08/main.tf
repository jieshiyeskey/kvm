module "cn-es-01-81" {
   source = "../../modules/"
   hostname = "cn-es-01-81"
   memoryMB = "30720"
   cpu = "16"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.81/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.1:62222"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}

module "cn-es-02-82" {
   source = "../../modules/"
   hostname = "cn-es-02-82"
   memoryMB = "30720"
   cpu = "16"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.82/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}
module "cn-es-03-83" {
   source = "../../modules/"
   hostname = "cn-es-03-83"
   memoryMB = "30720"
   cpu = "16"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.83/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.3:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}

