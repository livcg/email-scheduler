Rails app that sends scheduled emails.

URL's:
http://localhost:3000/emails
http://localhost:3000/rails/mailers/emailer/schedule_email_preview


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
* Push to github
* Deploy to heroku
* Ensure job queue is running
* Validate email address - Use API (just search one from google) e.g. http://blog.mashape.com/list-of-25-email-validation-apis/
* Add rspec tests
* Require fields in email
* Add test data
  * Send date time in past
  * Send date time ~now
  * Account for timezones
* Add helpful msgs to log
* Instead of removing sent emails from DB, keep record & mark as sent

UI
* Mv "New Email" link to top of page & make into a button
* Label timezone
* Fix styling
* If there are no emails to send, display msg
* Rmv/implement Show|Edit|Destroy links
* Only allow send dates & times in the future
* Add from address?
* Low pri: HTML in body?
* Low pri: Automatically update list of emails when email is sent



