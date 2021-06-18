variable "region" {
  default = "us-east-1"
}

variable "namespace" {
  description = "namespace, which could be your organiation name, e.g. amazon."
  default     = "myorg"
}

variable "environment" {
  type        = string
  default     = "preprod"
  description = "Environment area, e.g. prod or preprod."
}

variable "name" {
  description = "deployment name"
  default     = "sqs"
}

variable "delimiter" {
  description = "delimiter, which could be used between name, namespace and env."
  default     = "-"
}

variable "attributes" {
  default     = []
  description = "atttributes, which could be used for additional attributes."
}

variable "account" {
  description = "account, which could be AWS Account Name or Number."
  default     = "myaccount"
}

variable "project_name" {
  description = "stack name"
  default     = "myproj"
}

### SQS Variabls ###
variable "queue_name" {
  description = "The name for the SQS queue.If not specified, Terraform will assign a random name."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "A unique name beginning with the specified prefix."
  type        = string
  default     = null
}

variable "fifo_queue" {
  description = "Boolean designating a FIFO queue."
  type        = bool
  default     = false
}

variable "content_based_deduplication" {
  description = "Enables content-based deduplication for FIFO queues."
  type        = bool
  default     = false
}

variable "delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed."
  type        = number
  default     = 0
}

variable "visibility_timeout_seconds" {
  description = "The visibility timeout for the queue."
  type        = number
  default     = 30
}

variable "max_message_size" {
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it."
  type        = number
  default     = 262144
}

variable "message_retention_seconds" {
  description = "The number of seconds Amazon SQS retains a message."
  type        = number
  default     = 345600
}

variable "receive_wait_time_seconds" {
  description = "The time for which a ReceiveMessage call will wait for a message to arrive before returning."
  type        = number
  default     = 0
}

variable "kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK."
  type        = string
  default     = "alias/aws/sqs"
}

variable "kms_data_key_reuse_period_seconds" {
  description = "The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again."
  type        = number
  default     = 300
}

variable "fifo_throughput_limit" {
  description = "Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group."
  type        = string
  default     = "queue"
}

variable "deduplication_scope" {
  description = "Specifies whether message deduplication occurs at the message group or queue level."
  type        = string
  default     = null
}

variable "access_type" {
  description = "Access type for SQS queue - owner / sender / receiver."
  type        = string
  default     = "owner"
}

variable "tags" {
  description = "The tags which could be used for additional tags."
  default     = {}
}