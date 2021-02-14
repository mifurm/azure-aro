resource "null_resource" "azure-cli" {
  
  provisioner "local-exec" {
    command = "./aro.sh"

    environment = {
       clustername = var.clusterName
       resource_group = "${var.clusterName}rg"
       location = "westeurope"
       vnetname = "${var.clusterName}-vnet"
       cluster_resource_group = "${var.clusterName}-cluster-rg"
       WORKER_SUBNET_CIDR = "10.0.0.0/23"
       MASTER_SUBNET_CIDR = "10.0.2.0/23"
       VNET_CIDR = "10.0.0.0/22"
    }
  }
}
