class UserMailer < ActionMailer::Base
  default from: "dpal@marnaspals.com"
	def welcome_email(subscribers)

	    @subscribers = subscribers
	    @url  = 'http://www.marnaspals.com/'
	    mail(to: @subscribers.email, subject: 'Welcome To The Pal Post')
	    attachments['free_book.pdf'] = File.read('https://s3.amazonaws.com/marnaspals-dpal/thetips.pdf')
	end
end
