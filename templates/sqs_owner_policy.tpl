{
  "Version": "2012-10-17",
  "Id": "sqs-owner-policy",
  "Statement": [
    {
      "Sid": "owner_statement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "${account_owner_id}"
      },
      "Action": [
          "SQS:SendMessage",
          "SQS:ReceiveMessage"
        ],
      "Resource": "${sqs_queue_arn}"
    }
  ]
}