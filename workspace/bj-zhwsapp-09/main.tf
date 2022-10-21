#Example

#module "ad-wp-213" {         #module的名称
#   source = "../../modules/" #到这个目录找到创建虚拟机的文件【libvirt.tf】
#   hostname = "ad-wp-213"    #虚拟机主机名称(建议和module名称保持一致)
#   memoryMB = "8192"         #虚拟机内存大小
#   cpu = "8"                 #虚拟机CPU数量	
#   diskdata1Bytes = 1024*1024*1024*200  #增加第一块磁盘 
#   diskdata2Bytes = 1024*1024*1024*200 #增加第二块磁盘（已注释）
#   ipaddr = "172.16.0.223/23" #虚拟机IP地址及子网掩码
#   gateway = "172.16.0.1"     #虚拟机网关地址
#   dns = "219.141.140.10"     #虚拟机DNS
#   OS = "OL"                  #虚拟机操作系统类别(OL= Oracle Linux / US = Ubuntu Server Linux)a
#   Remote_KVM_NIC = "br0"     #虚拟机桥接网卡名称
#   Remote_KVM_HOST= "op@172.16.0.3:22"
#   Remote_KVM_VM_Path = "/data/VMs" #KVM宿主机上虚拟机磁盘存放目录
#   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2" #镜像模板地址
#}

module "ad-es-216" {
   source = "../../modules/"
   hostname = "ad-es-216"   
   memoryMB = "4096"   
   cpu = "4"  
   diskdata1Bytes = 1024*1024*1024*100
   diskdata2Bytes = 1024*1024*1024*100
   ipaddr = "172.16.0.216/23"  
   gateway = "172.16.0.1"
   dns = "219.141.140.10" 
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.3:22"
   Remote_KVM_VM_Path = "/data/VMs" 
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}

module "ad-es-217" {
   source = "../../modules/"
   hostname = "ad-es-217"   
   memoryMB = "4096"   
   cpu = "4"  
   diskdata1Bytes = 1024*1024*1024*100
   diskdata2Bytes = 1024*1024*1024*100
   ipaddr = "172.16.0.217/23"  
   gateway = "172.16.0.1"
   dns = "219.141.140.10" 
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.3:22"
   Remote_KVM_VM_Path = "/data/VMs" 
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}

module "ad-es-218" {
   source = "../../modules/"
   hostname = "ad-es-218"   
   memoryMB = "4096"   
   cpu = "4"  
   diskdata1Bytes = 1024*1024*1024*100
   diskdata2Bytes = 1024*1024*1024*100
   ipaddr = "172.16.0.218/23"  
   gateway = "172.16.0.1"
   dns = "219.141.140.10" 
   OS = "OL"
   Remote_KVM_NIC = "br0"
   Remote_KVM_HOST= "op@172.16.0.3:22"
   Remote_KVM_VM_Path = "/data/VMs" 
   Template_Image = "http://172.16.0.1/dl/Template-GenericCloud-OL8U6.qcow2"
}

