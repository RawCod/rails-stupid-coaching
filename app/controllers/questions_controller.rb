class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @right = 'Great!'
    @ques = 'Silly question, get dressed and go to work!'
    @wrong = 'I don\'t care, get dressed and go to work!'
    @return_answer =
      if params[:question] == 'I am going to work'
        @right
      elsif params[:question][-1] == '?'
        @ques
      else
        @wrong
      end
  end
end
