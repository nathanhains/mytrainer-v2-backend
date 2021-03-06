class Api::V1::FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index]
  # GET /friends
  def index
    @friends = Friend.all
    render json: FriendSerializer.new(@friends)
  end

  # GET /friends/1
  def show
    render json: @friend
  end

  # POST /friends
  def create
    @friend = Friend.find_or_create_by(friend_params)

    if @friend.save
      render json: FriendSerializer.new(@friend), status: :created
    else
      resp = {
        error: @friend.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends/1
  def update
    if @friend.update(friend_params)
      render json: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  def destroy
    @friend.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
      @friend = Friend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_params
      params.require(:friend).permit(:follower_id, :followee_id)
    end
end
