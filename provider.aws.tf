provider "aws" {
  version = "2.54"
  region  = var.region
}

provider "archive" {
  version = "1.3"
}
