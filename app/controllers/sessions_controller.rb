class SessionsController < ApplicationController
  def create
    user = User.find_by(first_name: params[:first_name], last_name: params[:last_name])
    if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :ok
    else
        render json: false, status: :unauthorized
    end
  end
end
