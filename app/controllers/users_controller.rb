class UsersController < ApplicationController

  def index
    if params[:user_id]
      
    else

    end
  end

  def show
    @database_users = [{name: "Soleil"}, {name: "Joe"}, {name: "David"}]
    @user = @database_users.find{ |user| user[:name] == params[:name]}
    
    render json: @user
  end	
end
