class Contact < MailForm::Base
	attribute :name,		:validate => true
	attribute :email, 		:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message,		:validate => true
	attribute :nickname, 	:captcha => true
	# the nickname is a hidden field to prevent spam. Bots can fill in but humans won't see it.

	def headers 
		{
		:subject => 'REWD Site Contact Us Form Submission',
		:to => 'team@rewholesalerdatabase.com',
		:from => %("#{name}" <#{email}>)
		}
	end
end