Rails app that sends scheduled emails.


Hostnames:
http://localhost:3000
https://emaillater.herokuapp.com

Paths:
emails
emails/<ID>
new
rails/mailers/emailer/schedule_email_preview
Etc.


-----
TO DO

* Add more rspec tests
  * Controller
  * Send date time in past
  * Send date time ~now
  * Account for timezones
  * Etc.
* Change error message for invalid email addy
* Review POST /emails route; disable?
* Allow POST /emails/new?
* Don't allow DELETE of sent emails?
* Add to README; change to md
* Add helpful msgs to log
* Low pri: Externalize strings, e.g. error msgs

UI
* Improve error message styling
* Improve other styling
* Display msg if there are no emails to send
* Only allow send dates & times in the future
* Use local timezone
* Change label for send date time attribute
* Low pri: Add from address?
* Low pri: HTML in body?
* Low pri: Change success page to redirect to show page w/ success msg?
* Low pri: Add client validation?


-----
DONE

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
x. Assets not loading on heroku:
"Failed to load resource: the server responded with a status of 404 (Not Found)":
https://emaillater.herokuapp.com/assets/application-595be6fdabce84ec71f1ace93c9de8fa.css
https://emaillater.herokuapp.com/assets/application-8474e4f266741613a6d5486dc2913241.js
https://emaillater.herokuapp.com/assets/application-595be6fdabce84ec71f1ace93c9de8fa.css
x. Change from address to something like email-scheduler@example.com
x. Require fields in email
x. Remove Mailgun login from config files & use env vars
x. Validate email address - Use API (just search one from google) e.g. http://blog.mashape.com/list-of-25-email-validation-apis/
x. Instead of removing sent emails from DB, keep record & mark as sent
x. Validate email addy only if it's not empty
x. Add root route
x. Rmv edit & destroy actions
x. Mv "New Email" link to top of page & change into a button
x. Label timezone
x. Add placeholder text for email addy
x. Fix show view
x. Incorporate Bootstrap
x. Improve success message styling
