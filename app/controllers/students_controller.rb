class StudentsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def show
    @user = Unirest.get('.../api/v1')
    render 'show.html.erb'
  end

  def edit
    render 'edit.html.erb'
  end

  def update
    @user = Unirest.post('.../api/v1')
    rendder 'edit.html.erb'
  end
end
