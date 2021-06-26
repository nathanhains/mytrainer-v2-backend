class Api::V1::SessionsController < ApplicationController
    skip_before_action :authorized, only: [:create, :get_current_user]

    def create
        @user = User.find_by(username: params[:session][:username])

        if @user && @user.authenticate(params[:session][:password])
            token = encode_token({ user_id: @user.id })
            render json: {user: UserSerializer.new(@user), jwt: token}, status: :ok
        else
            render json: {
                error: "Invalid Credentials"
            }
        end
    end

    def get_current_user
        if logged_in?
            render json: {user: UserSerializer.new(current_user)}
        end
    end

    def destroy 
        session.clear
        render json: {
            notice: "Successfully logged out"
        }, status: :ok
    end
end
