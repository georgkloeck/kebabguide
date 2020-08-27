CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],         # required
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],      # required
    host:                  "s3-eu-central-1.amazonaws.com",
    region:                "eu-central-1"
  }
  config.fog_directory  = 'kebabguide'                  # required
  config.fog_public     = true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end
