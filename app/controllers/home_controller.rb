class HomeController < ApplicationController
    def index
        
    end

    def welcome
        
    end
    
    def signup
        
    end
    
    def profile
        signup = Signup.new
        signup.userID = params[:userID]
        signup.password = params[:password]
        signup.confirmpassword = params[:confirmpassword]
        signup.username = params[:username]
        signup.userage = params[:userage]
        signup.usercountry = params[:usercountry]
        signup.save
        
        redirect_to '/welcome'
    end
    
    def profile_
        @signups = Signup.all
    end
        

end
