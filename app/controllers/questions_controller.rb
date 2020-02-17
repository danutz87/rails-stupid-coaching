class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_answer = params[:question]
    if params[:question] == 'I am going to work right now!'
      @answer = 'Great'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
