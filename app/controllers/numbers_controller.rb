# Handles flow of application
class NumbersController < ApplicationController
  # GET /numbers/new
  def new
    @number = Number.new
  end

  def create
    @number = Number.new(number_params)

    respond_to do |format|
      format.html { render 'numbers/new' }
      format.js { render 'numbers/new' }
    end
  end

  private

  def number_params
    params.require(:number).permit(:input)
  end
end
