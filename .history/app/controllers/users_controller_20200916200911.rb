def index
    @users = User.all
    if @users
        render json: {
            
        }

    end

end