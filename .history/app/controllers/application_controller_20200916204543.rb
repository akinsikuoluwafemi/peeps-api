class ApplicationController < ActionController::Base

    skip_before_action :verify_authenticity


end
