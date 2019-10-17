require_dependency "nyros_form2/application_controller"

module NyrosForm2
  class UsersController < ApplicationController
    def index
      @users =  User.all.paginate(:per_page => 5, :page => params[:page]).order('created_at DESC')
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          format.html { redirect_to users_path, notice: 'Contact was successfully created.' }
          format.json { render json: @user, status: :created, location: @user }
        else
          format.html { render action: "new" }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def show
      @user = User.find(params[:id])
    end

    def edit 
      @user = User.find(params[:id]) 
    end 
   
    def update   
      @user = User.find(params[:id])   
      if @user.update_attributes(user_params)   
        redirect_to users_path
      else     
        render :edit   
      end   
    end   

    def destroy   
     @user = User.find(params[:id])   
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'user succesfully deleted' }
        format.json { head :no_content}
        format.js  { render :layout => false }
      end    
    end   
    
    private
    def user_params 
      params.permit(:name, :email, :mobile) 
    end
  end
end
