class Email < ActiveRecord::Base
  validates :to, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  validates :send_date_time, presence: true
  validate :to_email_addy_must_be_valid

  def to_email_addy_must_be_valid
    unless errors.include?(:to)
      # Validate non-empty email address
      options =  { basic_auth: { username: ENV['EMAIL_ADDY_VALIDATOR_USERNAME'], password: ENV['EMAIL_ADDY_VALIDATOR_PASSWORD'] } }
      options[:body] = { address: to }
    response = HTTParty.get(ENV['EMAIL_ADDY_VALIDATOR_URL'], options)
      if !response['is_valid']
        errors.add(:to, 'Invalid email address')
      end
    end
  end
end
