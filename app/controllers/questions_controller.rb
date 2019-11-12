class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @answer = ''
    @question = params[:question]

    @answer = Answer.get_answer(@question)
  end
end
