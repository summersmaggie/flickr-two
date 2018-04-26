class AnswersController < ApplicationController

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def show
    @question = Question.find(params[:answer_id])
    @answer = Answer.find(@question.id)
    @answers = Answer.all
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      flash[:notice] = "Answer saved!"
      redirect_to questions_path
    else
      flash[:alert] = "Sorry, couldn't save."
      redirect_to '/'
    end
  end

  private
    def answer_params
      params.require(:answer).permit(:answer_title, :answer_body)
    end

end
