def index
    @users = User.all
    if @users

end