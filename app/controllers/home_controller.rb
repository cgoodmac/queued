class HomeController < ApplicationController

  def index
    session[:stack]=Stack.new
  end

  def function
    @function = params[:commit] 
    @color = params[:color]

    if @function == 'enqueue'
      session[:stack]#.push(@color)
    elsif @function == 'dequeue'
      session[:stack].pop
    end

  end

end