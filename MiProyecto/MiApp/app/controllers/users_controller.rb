class UsersController < ApplicationController

	def index
    @users=User.all
	end

	def new 
    @user=User.new
	end

	def edit
    @user=User.find(params[:id])
	end

	def create
    @user=User.find(params[:id])
    @user.save
    redirect_to users_path
	end

	def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to_users_path
	end

	def update
    @user=User.find(params[:id])
    @user.update(user_params)
    redirect_to_users_path
	end

	def user_params
    params.require(:user).permit(:name,:tower,:apartment)
	end


end


