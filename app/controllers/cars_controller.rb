class CarsController < ApplicationController
  def simulator

    @car = Car.new
    @car.make = params[:make]
    @car.model = params[:model]
    @car.year = params[:year]

    session[:car] = @car.to_yaml

  end

  def index
  end

  def accelerate
    @car = YAML.load(session[:car])
    @car.accelerate
    session[:car] = @car.to_yaml
    render 'simulator.html.erb'
  end

  def decelerate
    @car = YAML.load(session[:car])
    @car.decelerate
    session[:car] = @car.to_yaml
    render 'simulator.html.erb'
  end

  def lights
    @car = YAML.load(session[:car])
    @car.lights
    session[:car] = @car.to_yaml
    render 'simulator.html.erb'
  end


end
