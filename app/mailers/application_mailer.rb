class ApplicationMailer < ActionMailer::Base
  default from: 'kinjal.p@applocum.org'
  layout 'mailer'

  def sample_email(user)
  	@user = user
  	mail(to: @user.email, subject: 'Sample Email')
  end
end
