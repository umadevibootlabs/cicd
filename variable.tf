variable "allocated_storage" {
  description = "The storage allocation"
  type        = string
  default     = "10"
}
variable "subnet_ids" {
    type = list(string)
    description = "subnet ids for my vpc"
   default= [
    "subnet-00a771c328055bff2",
    "subnet-0175eb38117876d57",
  ]
  
}
variable "tag_Name" {
  type = string
  description = "tag for subnet group"
  default = "My DB subnet group"
}

variable "subname" {
  type = string
  description = "subname for the db"
  default = "main"
}
variable "skip_final_snapshot" {
     type = string
     description = "value for snapshot" 
     default = "true"
}
variable "parameter_group_name" {
    type = string
    description = "The value parameter group name"
    default = "default.mysql5.7"
  
}
variable "password" {
    type = string
    description = "The value for the password"
    default = "foobarbaz"  
}
variable "username" {
    type = string
    description = "The user name for the db"
    default = "foo"
  
}
variable "name" {
    type = string
    description = "The  name for the db"
    default = "mydb"
  
}
variable "instance_class" {
    type = string
    description = "The name of the instance class"
    default = "db.t3.micro"
  
}
variable "engine_version" {
    type = string
    description = "The version for the engine"
    default = "5.7"  
}
variable "engine" {
    type = string
    description = "The name for the engine"
    default = "mysql"  
}