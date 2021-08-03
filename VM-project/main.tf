provider "aws" {
    region = "us-east-2"
    access_key = "AKIA2MWNQBW36DB554LI"
    secret_key = "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"
}

resource "aws_instance" "my_virtual_machine_aws_demo" {
    ami = "ami-0443305dabd4be2bc"
    instance_type = "t2.micro"
    tags = {
        Name = "aws-linux-instance_re"
    }
}

#here you can try permutation and combination of the instances that you can try by saving the instance and adding without saving the instances and also you can also learn about the other ways in which you can change the way in which you are all aceesing the cloud and creating the resources