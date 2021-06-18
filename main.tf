data "aws_caller_identity" "current" {}

## Create SQS Queue 
resource "aws_sqs_queue" "sqs_queue" {
  name                              = var.queue_name
  name_prefix                       = var.name_prefix
  fifo_queue                        = var.fifo_queue
  content_based_deduplication       = var.content_based_deduplication
  delay_seconds                     = var.delay_seconds
  visibility_timeout_seconds        = var.visibility_timeout_seconds
  max_message_size                  = var.max_message_size
  message_retention_seconds         = var.message_retention_seconds
  receive_wait_time_seconds         = var.receive_wait_time_seconds
  kms_master_key_id                 = var.kms_master_key_id
  kms_data_key_reuse_period_seconds = var.kms_data_key_reuse_period_seconds
  tags                              = var.tags
}

## Create SQS Queue Policy
resource "aws_sqs_queue_policy" "sqs_queue_policy" {
  queue_url                         = aws_sqs_queue.sqs_queue.id
  policy = templatefile("${path.module}/templates/sqs_${var.access_type}_policy.tpl",
  {
    sqs_queue_arn           = aws_sqs_queue.sqs_queue.arn
    account_owner_id        = data.aws_caller_identity.current.account_id
  })
}
