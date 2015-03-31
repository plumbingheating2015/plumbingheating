class UserMailer < ActionMailer::Base

  default from: "info@calgaryserviceplumbers.com"

  def welcome_email(user)
    @user = user
    #attachments["garb.jpg"] = File.read("#{Rails.root}/public/assets/garb.jpg")
    mail(to: @user.email, subject: 'Welcome to Calgary Service Plumbers')
  end

   def query_mail(user)
  	@user=user
    mail(:to => "info@calgaryserviceplumbers.com", :subject => "Getting Quote")
   end

end
