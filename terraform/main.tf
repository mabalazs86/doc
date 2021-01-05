##############
# COMMANDS
##############
# terraform console -> open terraform console
# terraform apply -> execute
# terraform plan -> test and show changes without apply
# terraform init -> download new providers
# terraform destroy -> delete infrastructure
# terraform help



##############
# VARIABLES
##############
# create string variables
variable "myvar" {
  type    = string
  default = "hello terraform"
}
# var.myvar
# "${var.myvar}"

# create number variables
variable "mynumber" {
  type    = number
  default = 4
}
# var.mynumber
# "${var.mynumber}"

# create bool variables
variable "mybool" {
  type    = bool
  default = true
}
# var.mybool
# "${var.mybool}"


# create map variables
variable "mymap" {
  type = map(string)
  default = {
    mykey = "my value 2"
  }
}
# var.mymap
# var.mymap["mykey"]
# "${var.mymap}"


# create list variables
variable "mylist" {
  type    = list(any)
  default = ["one", "two", "three"]
}
# var.mylist
# var.mylist[1]
# "${var.mylist}"
