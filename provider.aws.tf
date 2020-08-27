provider "aws" {
  version = "3.00.0"
  region  = var.region
}

provider "archive" {
  version = "1.3"
}
