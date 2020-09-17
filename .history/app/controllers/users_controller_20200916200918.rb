def index
    @users = User.all
    if @users
        render json: {
            users: @users
        }

    end

end