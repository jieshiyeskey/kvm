module "cn-es-232" {
   source = "../../modules/"
   hostname = "cn-es-232"
   memoryMB = "2048"
   cpu = "2"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.232/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.3:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-ol86.qcow2"
}

