class Api::V1::WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]
  before_action :current_user, only: [:index]

  # GET /workouts
  def index
    @workouts = Workout.all.select{|w| w.user_id == @user.id}

    render json: WorkoutSerializer.new(@workouts)
  end

  # GET /workouts/1
  def show
    render json: @workout
  end

  # POST /workouts
  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      set_relations
      render json: WorkoutSerializer.new(@workout), status: :created
    else
      resp = {
        error: @workout.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update
    reset_relations
    if @workout.update(workout_params)
      set_relations
      set_workout
      render json: WorkoutSerializer.new(@workout)
    else
      resp = {
        error: @workout.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def reset_relations
      if @workout.workout_exercises
        @workout.workout_exercises.map do |w| 
          w.destroy
        end
      end
    end

    def set_relations
      if params[:workout][:exercises] && !params[:workout][:exercises].empty? 
        params[:workout][:exercises].map do |e|
          exercise = WorkoutExercise.new(workout_id: @workout.id, exercise_id: e[:id].to_i)
          if exercise.save && e[:addedSets] && !e[:addedSets].empty?
            e[:addedSets].map do |s|
              lbs = s[:lbs] == "" ? "" : s[:lbs].to_i
              reps = s[:reps] == "" ? "" : s[:reps].to_i
              exercise.set_groups.create(lbs: lbs, reps: reps)
            end
          end
        end
      end
    end

    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workout_params
      params.require(:workout).permit(:name, :notes, :user_id)
    end
end
