class SetGroupsController < ApplicationController
  before_action :set_set_group, only: [:show, :update, :destroy]

  # GET /set_groups
  def index
    @set_groups = SetGroup.all

    render json: @set_groups
  end

  # GET /set_groups/1
  def show
    render json: @set_group
  end

  # POST /set_groups
  def create
    @set_group = SetGroup.new(set_group_params)

    if @set_group.save
      render json: @set_group, status: :created, location: @set_group
    else
      render json: @set_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /set_groups/1
  def update
    if @set_group.update(set_group_params)
      render json: @set_group
    else
      render json: @set_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /set_groups/1
  def destroy
    @set_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_group
      @set_group = SetGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def set_group_params
      params.require(:set_group).permit(:lbs, :reps)
    end
end
