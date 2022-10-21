module "cn-gb-01-89" {
   source = "../../modules/"
   hostname = "cn-gb-01-89"
   memoryMB = "4096"
   cpu = "2"
   diskdata1Bytes = 1024*1024*1024*10
   diskdata2Bytes = 1024*1024*1024*10
   ipaddr = "172.16.0.89/23"
   gateway = "172.16.0.1"
   dns = "219.141.140.10"
   OS = "US"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.1:62222"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-US22U4P1.qcow2"
} 
