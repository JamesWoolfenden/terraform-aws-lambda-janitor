variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "description" {
  default = "Janitor Lambda"
}

variable "name" {
  default = "janitor"
}

variable "tracing_mode" {
  type    = string
  default = "PassThrough"
}

variable "timeout" {
  type    = string
  default = "30"
}

variable "runtime" {
  type    = string
  default = "nodejs12.x"
}

variable "memory_size" {
  type    = number
  default = 128
}

variable "handler" {
  type    = string
  default = "index.handler"
}

variable "region" {
  type = string
}
