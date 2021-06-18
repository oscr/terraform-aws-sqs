# Terraform Amazon SQS Module
**Authors** : Rahul Gaikwad (gikwadr@amazon.com), Jomcy Pappachen (jomcy@amazon.com)

This Terraform module will create an Amazon Queue Service (SQS) queue with other resources. 

## Repository directory structure 
* **deploy/** contains .tf configuration files and `dev.auto.tfvars` to define default variables.

# Install Terraform
To deploy this module, do the following:
Install Terraform. (See [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) for a tutorial.) 

# Sign up for Terraform Cloud
Sign up and log into [Terraform Cloud](https://app.terraform.io/signup/account). (There is a free tier available.)

## Configure Terraform Cloud API Access

Generate terraform cloud token

`terraform login` 

Export the TERRAFORM_CONFIG variable

`export TERRAFORM_CONFIG="$HOME/.terraform.d/credentials.tfrc.json"`

# Configure your tfvars file

_Example filepath_ = `$HOME/.aws/terraform.tfvars`

_Example tfvars file contents_ 

```
AWS_SECRET_ACCESS_KEY = "*****************"
AWS_ACCESS_KEY_ID = "*****************"
AWS_SESSION_TOKEN = "*****************"
```
> (replace *** with AKEY and SKEY)

Note: STS-based credentials _are optional_ but *highly recommended*. 

> !!!!CAUTION!!!!: Make sure your credential are secured ourside version control (and follow secrets mangement bestpractices)

# Deploy this module (instruction for linux or mac)

Clone the aws-ia/terraform-aws-sqs repository.

`git clone https://github.com/aws-ia/terraform-aws-sqs`

Change directory to module root.

`cd terraform-aws-sqs`.

Start by setting up you cloud workspace

`cd setup_workspace`. 

Run to following commands in order:

`terraform init`

`terraform apply`  or `terraform apply  -var-file="$HOME/.aws/terraform.tfvars"`.

Change directory to deploy dir (previous command auto generates backend.hcl)

`cd ../deploy`

 Open `dev.auto.tfvars` and edit the default values to match your enviornment. 
      - See [Protocols and endpoints](#table) later in this document for supported protocols and endpoint examples.

`terraform apply` or `terraform apply  -var-file="$HOME/.aws/terraform.tfvars"`. 

Terraform apply is run remotely in Terraform Cloud.


