## Variables

Variables in Terraform can be assigned values in multiple ways. 
Some of these include:
1. Environment variables
1. Command Line Flags
1. From a File
1. Variable Defaults

### Environment variables
```
export TF_VAR_project="mjindal-dev-host"
terraform plan -out .plan 
terraform apply .plan
```

### Command Line Flags
```
terraform plan -out .plan -var project="mjindal-dev-host"
terraform apply .plan
```

### From a file

#### Using `terraform.tfvars`
If you have your variable defind in `terraform.tfvars` file in the same directory then you don't have to do anything, terraform will pick the variables from this file automatically.

`terraform.tfvars`
```
project="<project-id>"
```

#### Using non standard tfvars file
You can create a tfvars file and you can use this file pass the variable values to terraform.

Create a file `variable/dev.tfvars` and place all the variable values in this file
```
project="<project-id>"
```

Now use the non standard tfvars file during the plan
```
terraform plan -out .plan -var-file variable/dev.tfvars
terraform apply .plan
```


```
terraform plan -out .plan -var-file variables/dev.tfvars
terraform apply .plan
```


### Using variable default.
You can also provide default vaules while creating the variable.
```
variable machine_type {
    type = string
    default = "e2-medium"
}
```
If you want to override these vaule during run time then you can use any of the above methods to override this value.