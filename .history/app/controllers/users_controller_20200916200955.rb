def index
    @users = User.all
    if @users
        render json: {
            users: @users
        }
    else
        render json: {
            status: 500,
            err
        }

    end

end