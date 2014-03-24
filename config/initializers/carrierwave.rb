CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => 'GOOG4ESDSAAG7LSFHBDW',
    :google_storage_secret_access_key => '3Uj6EiuJ9E2ydGALvND/BuU6KqItQeUE2CQxuKgT'
  }
  config.fog_directory = 'bharathi'
end