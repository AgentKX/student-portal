class SkillsController < ApplicationController
  def update
    Unirest.patch('https://thawing-lake-55981.herokuapp.com/students',
      headers: { 'Accept' => 'application/json'},
      parameters: {
        name: params[:name]
      }
    ).body

    flash[:success] = "Resume Updated!"
    redirect_to "/students/#{params[:id]}"
    # render 'edit.html.erb'
  end
end
