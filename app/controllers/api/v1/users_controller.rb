class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    
    render json: UserSerializer.new(@users)
  end

  # GET /users/1
  def show
    render json: UserSerializer.new(@user)
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      @token = encode_token(user_id: @user.id)
      render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
    else
      resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: UserSerializer.new(@user)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:avatar, :name, :username, :email, :password, :password_confirmation)
    end
end
