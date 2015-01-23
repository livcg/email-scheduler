Rails app that sends scheduled emails.


Hostnames:
http://localhost:3000
https://emaillater.herokuapp.com

Paths:
emails
emails/<ID>
new
rails/mailers/emailer/schedule_email_preview


-----
TO DO

x. Create Email model
x. Create web form
x. List scheduled emails
x. Add save action
x. Add mailer to send email right away
x. Add job queue
x. Send emails at specified times
x. Remove email entry fr. DB
x. List scheduled emails ordered to nearest one
x. Push to github
x. Deploy to heroku
x. Create Procfile for rails server & job/queue/worker process
x. Change from address to something like email-scheduler@example.com
***===>>> I'M HERE
* Validate email address - Use API (just search one from google) e.g. http://blog.mashape.com/list-of-25-email-validation-apis/
* Add rspec tests
  * Send date time in past
  * Send date time ~now
  * Account for timezones
  * Etc.
* Instead of removing sent emails from DB, keep record & mark as sent
* Add root route
* Require fields in email
* Remove Mailgun login from config files & use env vars
* Add helpful msgs to log
* Add to README; change to md
* Externalize strings, e.g. error msgs

UI
x. Assets not loading on heroku:
"Failed to load resource: the server responded with a status of 404 (Not Found)":
https://emaillater.herokuapp.com/assets/application-595be6fdabce84ec71f1ace93c9de8fa.css
https://emaillater.herokuapp.com/assets/application-8474e4f266741613a6d5486dc2913241.js
https://emaillater.herokuapp.com/assets/application-595be6fdabce84ec71f1ace93c9de8fa.css
* Mv "New Email" link to top of page & change into a button
* Label timezone
* If there are no emails to send, display msg
* Improve styling
* Rmv/implement Show|Edit|Destroy links
* Only allow send dates & times in the future
* Low pri: Add from address?
* Low pri: HTML in body?
* Low pri: Change success page to redirect to show page w/ success msg?
