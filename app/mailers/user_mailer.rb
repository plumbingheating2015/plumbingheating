class UserMailer < ActionMailer::Base

  default from: "priyanko.dey33@gmail.com"

  def welcome_email(user)
    @user = user
    #attachments["garb.jpg"] = File.read("#{Rails.root}/public/assets/garb.jpg")
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

   def query_mail(user)
  	@user=user
    mail(:to => "priyankodey87@gmail.com", :subject => "getting quote")
   end

end
