CarrierWave.configure do |config|

  if Rails.env.test? || Rails.env.cucumber?
    config.storage = :file
    config.enable_processing = false
  # config.root = "#{Rails.root}/tmp"
  else
    config.storage = :aws
  end

  config.aws_bucket = ENV['S3_BUCKET_NAME']
  config.aws_acl    = 'public-read'

  # To let CarrierWave work on heroku
  config.cache_dir = "#{Rails.root}/tmp/uploads"

  # Optionally define an asset host for configurations that are fronted by a
  # content host, such as CloudFront.
  # config.asset_host = "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}"

  # The maximum period for authenticated_urls is only 7 days.
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

  # Set custom options such as cache control to leverage browser caching
  config.aws_attributes = {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  }

  config.aws_credentials = {
    access_key_id:      ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key:  ENV['AWS_SECRET_ACCESS_KEY'],
    region:             ENV['AWS_REGION'] # Required
  }

  # Optional: Signing of download urls, e.g. for serving private content through
  # CloudFront. Be sure you have the `cloudfront-signer` gem installed and
  # configured:
  # config.aws_signer = -> (unsigned_url, options) do
  #   Aws::CF::Signer.sign_url(unsigned_url, options)
  # end
end
