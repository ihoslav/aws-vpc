module "ihos-vpc" {
  source = "rayslan/vpc/aws"
  version = "1.0.3"

  tag-vpc-name     = "ihos_vpc2"
  region           = "us-east-2"
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default" # Choose one

  cidr-block-private-subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] #Creates 3 private subnets ( you can not change the number )
  cidr-block-public-subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"] #Creates 3 public subnets ( you can not change the number )

  private-subnet-names = ["private1", "private2", "private3"]
  public-subnet-names  = ["public1", "public2", "public3"]

  private-route-table-name = "route_private"
  public-route-table-name  = "route_public"

  igw-name = "vpc1"
  ngw-name = "vpc2"

}  
