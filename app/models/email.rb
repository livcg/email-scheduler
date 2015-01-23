class Email < ActiveRecord::Base
  validates :to, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  validates :send_date_time, presence: true
  validate :to_email_addy_must_be_valid

  def to_email_addy_must_be_valid
    options =  { basic_auth: { username: ENV['MG_UN'], password: ENV['MG_PW'] } }
    options[:body] = { address: to }
    response = HTTParty.get('https://api.mailgun.net/v2/address/validate', options)
    if !response['is_valid']
      errors.add(:to, 'Invalid email address')
    end
  end
end
