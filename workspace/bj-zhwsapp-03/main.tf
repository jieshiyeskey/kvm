#Example

#module "ad-wp-213" {         #module的名称
#   source = "../../modules/" #到这个目录找到创建虚拟机的文件【libvirt.tf】
#   hostname = "ad-wp-213"    #虚拟机主机名称(建议和module名称保持一致)
#   memoryMB = "8192"         #虚拟机内存大小
#   cpu = "8"                 #虚拟机CPU数量	
#   diskdata1Bytes = 1024*1024*1024*200  #增加第一块磁盘 (200G)
#   diskdata2Bytes = 1024*1024*1024*200  #增加第二块磁盘（已注释）(200G)
#   ipaddr = "172.16.0.223/23" #虚拟机IP地址及子网掩码
#   gateway = "172.16.0.1"     #虚拟机网关地址
#   dns = "219.141.140.10"     #虚拟机DNS
#   OS = "OL"                  #虚拟机操作系统类别(OL= Oracle Linux / US = Ubuntu Server Linux)a
#   Remote_KVM_NIC = "br0"     #虚拟机桥接网卡名称
#   Remote_KVM_HOST= "op@172.16.0.3:22"
#   Remote_KVM_VM_Path = "/data/VMs" #KVM宿主机上虚拟机磁盘存放目录
#   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2" #镜像模板地址
#}

#module "cn-cp-01" {
#   source = "../../modules/"
#   hostname = "cn-cp-01"   
#   memoryMB = "8192"   
#   cpu = "8"          
#   diskdata1Bytes = 1024*1024*1024*10
#   diskdata2Bytes = 1024*1024*1024*10
#   ipaddr = "172.16.0.227/23"  
#   gateway = "172.16.0.1"
#   dns = "219.141.140.10" 
#   OS = "US"
#   Remote_KVM_NIC = "br0"
#   Remote_KVM_HOST= "op@172.16.0.3:22"
#   Remote_KVM_VM_Path = "/data/VMs" 
#   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-US22U4P1.qcow2"
#}


module "cn-cp-01-41" {
   source = "../../modules/"
   hostname = "cn-cp-01-41"
   memoryMB = "8192"
   cpu = "8"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   diskdata3Bytes = 1024*1024*1024*50
   diskdata4Bytes = 1024*1024*1024*50
   diskdata5Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.41/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}

module "cn-cp-02-42" {
   source = "../../modules/"
   hostname = "cn-cp-02-42"
   memoryMB = "8192"
   cpu = "8"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   diskdata3Bytes = 1024*1024*1024*50
   diskdata4Bytes = 1024*1024*1024*50
   diskdata5Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.42/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}
module "cn-cp-03-43" {
   source = "../../modules/"
   hostname = "cn-cp-03-43"
   memoryMB = "8192"
   cpu = "8"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   diskdata3Bytes = 1024*1024*1024*50
   diskdata4Bytes = 1024*1024*1024*50
   diskdata5Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.43/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}


module "cn-ap-01-51" {
   source = "../../modules/"
   hostname = "cn-ap-01-51"
   memoryMB = "8192"
   cpu = "8"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   diskdata3Bytes = 1024*1024*1024*50
   diskdata4Bytes = 1024*1024*1024*50
   diskdata5Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.51/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
} 

module "cn-ap-02-52" {
   source = "../../modules/"
   hostname = "cn-ap-02-52"
   memoryMB = "8192"
   cpu = "8"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   diskdata3Bytes = 1024*1024*1024*50
   diskdata4Bytes = 1024*1024*1024*50
   diskdata5Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.52/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}
module "cn-ap-03-53" {
   source = "../../modules/"
   hostname = "cn-ap-03-53"
   memoryMB = "8192"
   cpu = "8"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   diskdata3Bytes = 1024*1024*1024*50
   diskdata4Bytes = 1024*1024*1024*50
   diskdata5Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.53/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}
module "cn-ap-04-54" {
   source = "../../modules/"
   hostname = "cn-ap-04-54"
   memoryMB = "8192"
   cpu = "8"
   diskdata1Bytes = 1024*1024*1024*50
   diskdata2Bytes = 1024*1024*1024*50
   diskdata3Bytes = 1024*1024*1024*50
   diskdata4Bytes = 1024*1024*1024*50
   diskdata5Bytes = 1024*1024*1024*50
   ipaddr = "172.16.0.54/23"
   gateway = "172.16.0.1"
   dns = "223.5.5.5"
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.2:22"
   Remote_KVM_VM_Path = "/data/VMs"
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}
