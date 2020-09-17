class SessionsController < ApplicationController
    def create
        @user = User.find_by(email: session_params[:email])
    end

    if @user && @user.authenticate(session_params[:password])
        login!
        render json: {
           logged_in: true,
           user: @user 
        }
    else
        render json: {
            
        }

    end


end