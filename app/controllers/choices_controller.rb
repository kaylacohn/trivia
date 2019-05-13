class ChoicesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @choice = @question.choices.new(params[:choice])
  end

  def create
    @question = Question.find(params[:question_id])
    @choice = @question.choices.create(text: params[:choice][:text], correct_answer: params[:choice][:correct_answer])

    redirect_to question_path(@question)
  end

  def destroy
    @question = Question.find(:question_id)
    @choice = @question.choices.find(params[:id])
    @choice.destroy

    redirect_to question_path(@question)
  end

  private
end
