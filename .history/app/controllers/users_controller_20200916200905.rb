def index
    @users = User.all
    if @users
        render

    end

end