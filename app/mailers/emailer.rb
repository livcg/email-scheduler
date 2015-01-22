class Emailer < ApplicationMailer
  default from: 'livcg@example.com'
 
  def schedule_email(email)
    @email = email
    delivery_options = { user_name: "postmaster@sandboxd4b0ebdc9fb14e6fa37eea18dd53bcad.mailgun.org",
                         password: "21ff9cbbcf6afceaee1013649cc5cbd8",
                         address: "smtp.mailgun.org",
                         port: 587 }
    mail(to: @email.to, subject: @email.subject, body: @email.body,
         delivery_method_options: delivery_options)
    email.destroy
  end
end
