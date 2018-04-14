class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.find_by(email: user_params[:email])
    return render(json: user) if user

    new_user = User.new(user_params)

    if new_user.save
      render json: new_user
    else
      render json: new_user.errors, status: 400
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :token)
  end
end
