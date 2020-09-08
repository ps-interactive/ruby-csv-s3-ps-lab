require "aws-sdk-s3"

s3 = Aws::S3::Client.new(
  region: ""
)

bucket_name = ""

s3.create_bucket({
  bucket: bucket_name
})

s3.put_object({
  acl: "",
  key: "winners.csv",
  bucket: bucket_name,
  body: IO.read("winners.csv")
})

bucket = Aws::S3::Bucket.new(bucket_name)
obj = bucket.object('winners.csv')

puts obj.public_url