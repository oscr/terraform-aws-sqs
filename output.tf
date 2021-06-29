output "sqs_queue_arn" {
  description = "SQS Queue arn"
  value = aws_sqs_queue.sqs_queue.arn
}

output "sqs_queue_id" {
  description = "The URL for the created Amazon SQS queue"
  value = aws_sqs_queue.sqs_queue.id
}

output "sqs_queue_name" {
  description = "The name of the SQS queue"
  value = aws_sqs_queue.sqs_queue.name
}