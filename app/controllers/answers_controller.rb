class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
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
