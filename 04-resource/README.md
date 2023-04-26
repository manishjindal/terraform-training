## Resource

### GCP Authentication
```
gcloud auth application-default login
```

### Init
```
terraform init
```

### Plan
```
terraform plan
terraform plan -out .plan
```

### Apply
```
terraform apply
terraform apply .plan
terraform apply --auto-approve
```

### Destroy
```
terraform destroy
terraform destroy --auto-approve
terraform destroy -target google_compute_instance.default --auto-approve
```

