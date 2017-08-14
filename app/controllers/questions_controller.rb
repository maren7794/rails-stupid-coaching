class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer
  end

  def ask

  end

  private

  def coach_answer
    if @question == "I am going to work right now!"
      return ""
    elsif @question.include?('?')
      return "Silly question son..."
    else
      return "I don't care my boy!"
    end
  end
end
