class TestController < ApplicationController
  
  def index
  end

  def new
    @questions = Question.all
  end

  
  
end
