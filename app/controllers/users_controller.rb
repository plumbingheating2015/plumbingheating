class UsersController < ApplicationController
	def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        # UserMailer.registration_confirmation(@user).deliver
        # UserMailer.query_mail(@user).deliver

        format.html { redirect_to "/schedule", notice: 'User was successfully created.' }
        flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
     def user_params
      params.require(:user).permit(:name, :email, :phone, :postal, :issue, :message)
    end

end
