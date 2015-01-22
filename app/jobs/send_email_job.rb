class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(email)
    @email = email
    Emailer.schedule_email(@email).deliver_later
  end
end
