class WorkoutsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_workout, only: %i[ show edit update destroy ]

  # GET /workouts
  def index
    @workouts = current_user ? current_user.workouts : Workout.none
  end

  # GET /workouts/1
  def show
  end

  # GET /workouts/new
  def new
    @workout = current_user.workouts.new
  end

  # GET /workouts/1/edit
  def edit
  end

  # POST /workouts
  def create
    @workout = current_user.workouts.new(workout_params)

    if @workout.save
      redirect_to @workout, notice: "Workout was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update
    if @workout.update(workout_params)
      redirect_to @workout, notice: "Workout was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
    redirect_to workouts_path, notice: "Workout was successfully deleted."
  end

  private

    # Loads workout ONLY belonging to current user
    def set_workout
      @workout = current_user.workouts.find(params[:id])
    end

    def workout_params
      params.require(:workout).permit(:exercise, :weight, :reps, :workout_date)
    end
end
