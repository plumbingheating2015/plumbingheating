class StaticPagesController < ApplicationController
  
  def index
  end

  def services
  end

  def schedule
    @user = User.new
  end

  def specials
  end

  def contact
  end

  def blog
  end

  def help
  end

  def service_residential
    @user = User.new    
  end

  def service_commercial    
  end

  def service_retail    
  end

  def service_waterheater
    @user = User.new    
  end

  def service_hydrojetting
     @user = User.new    
  end

  def service_plumbingrepairs
     @user = User.new    
  end

  def service_garbagedisposal
     @user = User.new    
  end

  def about    
  end

 

end


