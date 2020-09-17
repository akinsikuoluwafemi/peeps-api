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
    @user = User.find(params[:id])
    if @user
        render json: {
            user: @user
        }
    else 
        render json: {
            status: 500,
            errors: ['user not found']
        }
    end
end

def create
    @user = User.new(user_params)
    if @user.save
        login!
        render json: {
            status
        }
    end

end