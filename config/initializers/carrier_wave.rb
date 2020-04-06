if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        :provider              => 'AWS',
        :region                => ENV['S3_ap-northeast-1'],
        :aws_access_key_id     => ENV['S3_AKIAYHOI5EGQT43XLJN6'],
        :aws_secret_access_key => ENV['S3_FmCUF3kPiRiC/29NfHEYHKHTKWE0Q010WQekfu77']
      }
      config.fog_directory     =  ENV['S3_buketbucket']
    end
end