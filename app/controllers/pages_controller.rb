class PagesController < ApplicationController
  def home
  
  end

  def answer
    @question = params[:question]
    @response = coach_response(@question)
  end

  private

  def coach_response(question)
    if question.downcase == "i am going to work right now!"
      "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
