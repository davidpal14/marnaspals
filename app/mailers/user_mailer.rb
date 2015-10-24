class UserMailer < ActionMailer::Base
  default from: "dpal@marnaspals.com"

	def welcome_email(subscribers)
	    @subscribers = subscribers
	    @url  = 'http://www.marnaspals.com/'
	    attachments['9tips.jpg'] = File.read('https://s3.amazonaws.com/marnaspals-dpal/9tips.jpg')
	    mail(to: @subscribers.email, subject: 'Welcome To The Pal Post')

	end
end
