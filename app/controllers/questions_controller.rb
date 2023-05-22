class QuestionsController < ApplicationController

  def ask
  end

  def coach_answer
    #creer 2 variables d'instance @question et @answer
    @question = params[:my_question]

    if @question.capitalize == 'I am going to work!'
      @answer = "Great!"
    elsif @question.include?('?') # your_message.end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
