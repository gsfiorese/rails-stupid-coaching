class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.nil?
      @answer = "I can't hear you! Speak up!"
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end
