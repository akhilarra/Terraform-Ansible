#!/bin/bash
      /usr/bin/aws s3 sync s3://#{aws_s3_bucket.code.bucket} /var/www/html/
      /bin/touch /var/spool/cron/root
      sudo /bin/echo '*/5 * * * * aws s3 sync s3://${aws_s3_bucket.code.bucket} /var/www/html' >> /var/spool/cron/root