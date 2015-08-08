class UserMailer < ActionMailer::Base
  default from: "dpal@marnaspals.com"

	def welcome_email(subscribers)
	    @subscribers = subscribers
	    @url  = 'http://www.marnaspals.com/'
	    mail(to: @subscribers.email, subject: '8 Tips to Write Better Application Essays')
	  end


end
