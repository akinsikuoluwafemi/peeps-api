def index
    @users = User.all
    if @users
        render json: {
            users: @users
        }
    else
        render json: {
            status: 500,
            errors: ['no users found']
        }

    end

end


def show 
    @user = User.find
end