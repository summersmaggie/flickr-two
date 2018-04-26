class QuestionsController < ApplicationController
  before_action :authenticate_user!, :only => [:new] do
    redirect_to root_path unless current_user && current_user.admin
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.find(@question.id)
    @answers = Answer.all
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question saved!"
      redirect_to questions_path
    else
      flash[:alert] = "Sorry, couldn't save."
      render :new
    end
  end

  def index
    @questions = Question.all
  end

  private
    def question_params
      params.require(:question).permit(:question_title, :question_body)
    end

end
