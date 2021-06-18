output "sqs_queue_arn" {
  description = "SQS Queue ARN"
  value       = module.qs_sqs.sqs_queue_arn
}

output "sqs_queue_id" {
  description = "The URL for the created Amazon SQS queue"
  value       = module.qs_sqs.sqs_queue_id
}

output "sqs_queue_name" {
  description = "The name of the SQS queue"
  value       = module.qs_sqs.sqs_queue_name
}