require_dependency "nyros_form2/application_controller"

module NyrosForm2
  class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save

        redirect_to users_path

      else   
       render user_new_path
      end   
    end
   

    def show
      @user = User.find(params[:id])
    end

    def edit
    end

    def update
    end

    def delete
    end

    def user_params   
      params.require(:user).permit(:name, :email, :mobile);  
    end  
  end
end
