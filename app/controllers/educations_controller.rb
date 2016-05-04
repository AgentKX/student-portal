class EducationsController < ApplicationController
  def update
    Unirest.patch('https://thawing-lake-55981.herokuapp.com/students',
        headers: { 'Accept' => 'application/json'},
        parameters: {
          degree: params[:degree],
          university_name: params[:university_name],
          start_date: params[:start_date],
          end_date: params[:end_date],
          details: params[:details]
        }
      ).body
    end
  end
