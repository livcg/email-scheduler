class Email < ActiveRecord::Base
  validates :to, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  validates :send_date_time, presence: true
  validate :to_email_addy_must_be_valid

  def to_email_addy_must_be_valid
    if to == 'test'
      errors.add(:to, 'Invalid email address')
    end
  end
end
