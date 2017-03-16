class CardiosController < ApplicationController

  def index
    cardios = Cardio.where(workout_id: params[:workout_id])

    render json: cardios
  end

  def show
    cardio = Cardio.find(params[:id])
    render json: cardio
  end


  def create
    workout = Workout.find(params[:workout_id])

    puts "**This is the workout info"
    puts workout

    cardio = workout.cardios.create(cardio_params)

    if cardio
      render json: cardio, status: :created
    else
      render json: cardio.errors, status: :unprocessable_entity
    end
  end

  def update
    cardio = Cardio.find(params[:id])
    if cardio.update(cardio_params)
      render json: cardio
    else
      render json: cardio.errors, status: :unprocessable_entity
    end
  end

  def destroy
    cardio = Cardio.find(params[:id])
    cardio.destroy
    render json: {status: 204}
  end

  private

    def cardio_params
      params.require(:cardio).permit(:cardio_name, :time, :intensity, :distance, :workout_id)
    end
  end
