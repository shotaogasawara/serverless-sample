require 'aws-sdk-s3'

def handler(event:, context:)
  s3 = Aws::S3::Client.new(region: 'ap-northeast-1')
  resp = s3.list_buckets
  resp.buckets.map(&:name)
end
