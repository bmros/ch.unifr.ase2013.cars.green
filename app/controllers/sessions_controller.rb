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
<<<<<<< HEAD
	  redirect_to user
	  #redirect_to user_cars_path(user)
	  session[:current_user_id] = user.id
=======
	  #redirect_to user
	  redirect_to user_cars_path(user)
>>>>>>> 1863f9aa536fe5a8fe8c5d021e67d1b99b51e50a
    end
  end
  
  def destroy
<<<<<<< HEAD
  	session[:current_user_id] = nil
=======
>>>>>>> 1863f9aa536fe5a8fe8c5d021e67d1b99b51e50a
    sign_out
    redirect_to root_path
  end  
  
  
end
