class SessionsController < ApplicationController
    
    skip_before_filter :set_current_user
    
    def login
    end

    def create
        auth=request.env["omniauth.auth"]
        user=Usergoer.find_by(:provider => auth["provider"], :uid => auth["uid"]) ||
        Usergoer.create_with_omniauth(auth)
        sessions[:user_ID] = user.id
        redirect_to login
    end
    
    def destroy
        sessions.delete(:user_ID)
        flash[:notice] = "Logged out successfully"
        redirect_to login
    end
end
