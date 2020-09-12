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

# class StudentsController < ApplicationController
#   def index
#       @sensei = Sensei.find(params[:sensei_id])
#       @students = Student.where(sensei_id: @sensei.id)
#       render json: @students, include: :sensei, status: :ok
#   end
#   def show
#       @sensei = Sensei.find(params[:sensei_id])
#       @student = Student.find(params[:id])
#       render json: @student, include: :sensei, status: :ok
#   end
# end


=begin class SenseisController < ApplicationController
  def index
      @dojo = Dojo.find(params[:dojo_id])
      @senseis = Sensei.where(dojo_id: @dojo.id)
      render json: @senseis, include: :dojo, status: :ok
  end
  def show
      @dojo = Dojo.find(params[:dojo_id])
      @senseis = Sensei.find(params[:id])
      render json: @senseis, include: :students, status: :ok
  end
  def create
      @senseis = Sensei.new(sensei_params)
      if @senseis.save
          render json: @senseis
      else
          render json: @senseis.errors, status: :unprocessable_entity
      end
  end
  def update
      @dojos = Dojo.find(params[:dojo_id])
      @senseis = Sensei.where(dojo_id: @dojo_id)
      if @senseis.update(sensei_params)
          render json: @senseis
        else
          render json: @senseis.errors, status: :unprocessable_entity
      end
  end
  def destroy
      @dojos = Dojo.find(params[:dojo_id])
      @senseis = Sensei.where(dojo_id: @dojo_id)
      @senseis.destroy
  end
  private
  def sensei_params
      params.require(:sensei).permit(:name, :wise_quote)
  end
end =end