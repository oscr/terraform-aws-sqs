{
  "Version": "2012-10-17",
  "Id": "sqs-sender-policy",
  "Statement": [
    {
      "Sid": "sender_statement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "${account_owner_id}"
      },
      "Action": [
          "SQS:SendMessage"
        ],
      "Resource": "${sqs_queue_arn}"
    }
  ]
}