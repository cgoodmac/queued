class HomeController < ApplicationController

  def index
    session[:queue]=Que.new
  end

  def queued
    @function = params[:commit] 
    @color = params[:color]

    if @function == 'enqueue'
      session[:queue].enqueue(@color)
    elsif @function == 'dequeue'
      session[:queue].dequeue
    end

  end

end