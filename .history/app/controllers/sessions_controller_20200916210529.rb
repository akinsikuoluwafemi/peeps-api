class SessionsController < ApplicationController
    def create
        @user = User.find_by(email: session_params[:email])
    end

    if @user


end