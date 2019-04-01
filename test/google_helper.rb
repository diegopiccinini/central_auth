ENV['RAILS_ENV'] ||= 'test'

GOOGLE_CLIENT_ID = ENV['GOOGLE_CLIENT_ID']
GOOGLE_CLIENT_SECRET = ENV['GOOGLE_CLIENT_SECRET']

require 'google_sign_in/validator'
require 'google_sign_in/identity'

GoogleCertificate.create_test_certificate
key_pem=File.expand_path File.join(Rails.root,'test','key.pem')
GOOGLE_PRIVATE_KEY = OpenSSL::PKey::RSA.new File.read(key_pem)

if GoogleCertificate.in_effect.count < 1
  raise "Test certificate is expired."
end


class ActiveSupport::TestCase

  def validator
    GoogleSignIn::Validator
  end

  def payload
    {
      exp: validator.exp.to_i,
      iss: validator.iss,
      aud: validator.aud,
      cid: validator.client_id,
      sub: '183838372929',
      email: "test@#{ENV['CUSTOM_DOMAIN_FILTER']}",
      verified: true,
      given_name: 'Peter',
      family_name: 'Smith',
      name: 'Peter S'
    }
  end

  def expired_payload
    expired=payload
    expired[:exp]=1.second.ago
    expired
  end

  def token p: payload
    JWT.encode(p, validator.key, 'RS256')
  end

  def identity
    GoogleSignIn::Identity.new token
  end

end

