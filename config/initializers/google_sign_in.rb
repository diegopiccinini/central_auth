unless Rails.env.production?
  key_pem=File.expand_path File.join(Rails.root,'test','key.pem')
  GOOGLE_PRIVATE_KEY = OpenSSL::PKey::RSA.new File.read(key_pem)
end
