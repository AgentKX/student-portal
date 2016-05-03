class StudentsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def show
    @users = User.all
    render 'show.html.erb'
  end

  def edit
    render 'edit.html.erb'
  end

  def update
    rendder 'edit.html.erb'
  end
end
