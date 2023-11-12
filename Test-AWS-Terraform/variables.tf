variable "my-test-instance" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "The-EU-Ubuntu-Image-Test"
}

variable "ubuntu-ami" {
  description = "Ubuntu 22.04	amd64	hvm-ssd - get the ami from - https://cloud-images.ubuntu.com/locator/v"
  type        = string
  default     = "ami-0b3102a347810837f"
}