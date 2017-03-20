class WeightsController < ApplicationController

  def index
    weights = Weight.where(workout_id: params[:workout_id])

    render json: weights
  end

  def show
    weight = Weight.find(params[:id])
    render json: weight
  end


  def create
    @workout = Workout.find(params[:workout_id])

    puts "**This is the workout info**"
    puts workout

    @weight = @workout.weights.create(weight_params)

    if weight
      render json: weight, status: :created
    else
      render json: weight.errors, status: :unprocessable_entity
    end
  end

  def update
    weight = Weight.find(params[:id])
    if weight.update(weight_params)
      render json: weight
    else
      render json: weight.errors, status: :unprocessable_entity
    end
  end

  def destroy
    weight = Weight.find(params[:id])
    weight.destroy
    render json: {status: 204}
  end

  private

    def weight_params
      params.require(:weight).permit(:exercise_name, :set, :rep, :weight, :workout_id)
    end

  end
