class SessionsController < ApplicationController
    def create
        @user = User.find_by(email: session_params[:email])

    if @user && @user.authenticate(session_params[:password])
        login!
        render json: {
           logged_in: true,
           user: @user 
        }
    else
        render json: {
            status: 401,
            errors: ['no such user', 'verify credentials and try again or signup']
        }

    end

    end

    def is_logged_in?
        if logged_in? && current_user
            render json: {
                logged_in: true,
                user
            }
    end

    

end