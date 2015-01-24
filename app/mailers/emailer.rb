class Emailer < ApplicationMailer
  default from: 'email-scheduler@example.com'
 
  def schedule_email(email)
    @email = email
    delivery_options = { user_name: ENV['SMTP_USERNAME'],
                         password: ENV['SMTP_PASSWORD'],
                         address: ENV['SMTP_ADDRESS'],
                         port: ENV['SMTP_PORT'] }
    mail(to: @email.to, subject: @email.subject, body: @email.body,
         delivery_method_options: delivery_options)
    @email.sent = true
    @email.save
  end
end
