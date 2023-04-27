/*
terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "4.117.0"
    }
  }
}

terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.20.0"
    }
  }
}
*/

/*
terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "4.117.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.20.0"
    }
  }
  required_version = ">=1.3"
}

*/

terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.117.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.20.0"
    }
  }
  required_version = "> 1.3"
}

