class UserMailer < ActionMailer::Base
  default from: "dpal@marnaspals.com"

	def welcome_email(subscribers)
	    @subscribers = subscribers
	    @url  = 'http://www.marnaspals.com/'
	    attachments['9tips.pdf'] = File.read('https://s3.amazonaws.com/marnaspals-dpal/thetips')
	    mail(to: @subscribers.email, subject: 'Welcome To The Pal Post')

	end
end
