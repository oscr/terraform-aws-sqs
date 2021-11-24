# Defaults

provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.0.0"
  backend "remote" {}
}


# Create Labels
module "quickstart_sqs_label" {
  source    = "aws-ia/label/aws"
  version   = "0.0.3"
  region    = var.region
  namespace = var.namespace
  env       = var.environment
  account   = var.account
  name      = var.project_name
  delimiter = var.delimiter
  tags = tomap({
    "deployed_by" = "quickstart-terraform"
    "project"     = var.project_name
  })
}

# Create SQS
module "qs_sqs" {
  source                            = "../"
  queue_name                        = var.queue_name
  name_prefix                       = var.name_prefix
  fifo_queue                        = var.fifo_queue
  content_based_deduplication       = var.content_based_deduplication
  fifo_throughput_limit             = var.fifo_throughput_limit
  deduplication_scope               = var.deduplication_scope
  delay_seconds                     = var.delay_seconds
  visibility_timeout_seconds        = var.visibility_timeout_seconds
  max_message_size                  = var.max_message_size
  message_retention_seconds         = var.message_retention_seconds
  receive_wait_time_seconds         = var.receive_wait_time_seconds
  kms_master_key_id                 = var.kms_master_key_id
  kms_data_key_reuse_period_seconds = var.kms_data_key_reuse_period_seconds
  access_type                       = var.access_type
  tags                              = module.quickstart_sqs_label.tags
}