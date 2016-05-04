class StudentsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def show
    # @user = User.find_by(id: params[:id])
    @user_id = params[:id].to_i
    @user = Unirest.get('https://thawing-lake-55981.herokuapp.com/students.json').body
    render 'show.html.erb'
  end

  def edit
    @user_id = params[:id].to_i
    @user = Unirest.get('https://thawing-lake-55981.herokuapp.com/students.json').body
    
    # user_id = params[:id]
    # @user = User.find_by(id: user_id)
    render 'edit.html.erb'
  end

  def update

    # @user_id = params[:id].to_i
    # @user = Unirest.get('https://thawing-lake-55981.herokuapp.com/students.json').body
    Unirest.patch('https://thawing-lake-55981.herokuapp.com/students',
      headers: { 'Accept' => 'application/json'},
      parameters: {
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
       
      }
    ).body
 

    flash[:success] = "Resume Updated!"
    redirect_to "/students/#{params[:id]}"
    # render 'edit.html.erb'
  end

end
