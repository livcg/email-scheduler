# Preview all emails at http://localhost:3000/rails/mailers/emailer
class EmailerPreview < ActionMailer::Preview
  def schedule_email_preview
    Emailer.schedule_email(Email.last)
  end
end
