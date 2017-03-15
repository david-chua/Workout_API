class WorkoutsController < ApplicationController
  
def index
  workouts = current_user.workouts

  render json: {status: 200, workouts: workouts}
end

def create
  workout = current_user.workouts.new(workout_params)

  if workout.save
    render json: {status: 201, workout: workout}
  else
    render json: {status: 422, user: workout.errors}
  end
end

def update
  workout = Workout.find(params[:id])
  workout.update(workout_params)

  render json: {status: 200, workouts: current_user.workouts}
end

def destroy
  Workout.destroy(params[:id])

  render json: {status: 204, message: "Workout deletion is a success", workouts: current_user.workouts}
end

private

def workout_params
  params.required(:workout).permit(:title, :date, :user_id)
end
end
