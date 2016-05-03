class StudentsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def show
    @user = User.find_by(id: params[:id])
    @user = Unirest.get('.../api/v1')
    render 'show.html.erb'
  end

  def edit
    user_id = params[:id]
    @user = User.find_by(id: user_id)
    render 'edit.html.erb'
  end

  def update

    user_id = params[:id]
    @user = User.find_by(id: user_id)
    @user.update(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:age],
      blog: params[:blog],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      experience: params[:experience],
      job_title: params[:job_title],
      company_name: params[:company_name],
      start_date: params[:start_date],
      end_date: params[:end_date],
      details: params[:details],
      university_name: params[:university_name],
      degree: params[:degree],
      start_date: params[:start_date],
      end_date: params[:end_date],
      details: params[:details],
      name: params[:name]
    )
    flash[:success] = "Resume Updated!"
    redirect_to "/paws/#{@paw.id}"

    @user = Unirest.post('.../api/v1')
    render 'edit.html.erb'

  end
end
