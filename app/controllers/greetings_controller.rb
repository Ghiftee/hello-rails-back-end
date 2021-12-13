class GreetingsController < ApplicationController
  # GET /greetings
  def index
    greeting = Greeting.order(Arel.sql('RANDOM()')).first
    render json: { message: greeting.message }
  end
end
