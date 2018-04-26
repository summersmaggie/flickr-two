class LayoutsController < ApplicationController
  def index
    @users = User.all
    @questions = Question.all
  end
end
