{
  "Version": "2012-10-17",
  "Id": "sqs-receiver-policy",
  "Statement": [
    {
      "Sid": "receiver_statement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "${account_owner_id}"
      },
      "Action": [
          "SQS:ReceiveMessage"
        ],
      "Resource": "${sqs_queue_arn}"
    }
  ]
}