CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.credentials[:aws][:access_key_id],                        # required unless using use_iam_profile
    aws_secret_access_key: Rails.application.credentials[:aws][:secret_access_key],                        # required unless using use_iam_profile
  }
  config.fog_directory  = 'actualizer'                                      # required
end
