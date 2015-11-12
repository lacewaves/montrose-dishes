# require "refile"
require "refile/s3"

aws = {
  access_key_id: ENV["AWSAccessKeyId"],
  secret_access_key: ENV["AWSSecretKey"],
  region: "us-west-2",
  bucket: "still-mesa-4051-dev",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)

# Refile.configure do |config|
#   config.store = Refile::Postgres::Backend.new(proc { ActiveRecord::Base.connection.raw_connection } )
# end
