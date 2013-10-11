class SessionsController < ApplicationController
  def new
    @titre = "Login"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Combinaison Email/Mot de passe invalide."
      @titre = "S'identifier"
      render 'new'
    else
      sign_in user
	  redirect_to user
	  #redirect_to user_cars_path(user)
	  session[:current_user_id] = user.id
    end
  end
  
  def destroy
  	session[:current_user_id] = nil
    sign_out
    redirect_to root_path
  end  
  
  
end
