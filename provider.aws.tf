provider "aws" {
  version = "2.68.0"
  region  = var.region
}

provider "archive" {
  version = "1.3"
}
