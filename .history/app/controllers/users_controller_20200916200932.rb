def index
    @users = User.all
    if @users
        render json: {
            users: @users
        }
    else
        

    end

end