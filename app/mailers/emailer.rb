class Emailer < ApplicationMailer
  default from: 'livcg@example.com'
 
  def schedule_email(email)
    @email = email
    delivery_options = { user_name: ENV["EMAILERUSERNAME"],
                         password: ENV["EMAILERPASSWORD"],
                         address: ENV["EMAILERADDRESS"] }
    mail(to: @email.to, subject: @email.subject, body: @email.body,
         delivery_method_options: delivery_options)
  end
end
