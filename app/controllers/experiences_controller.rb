class ExperiencesController < ApplicationController
  def update
    Unirest.patch('https://thawing-lake-55981.herokuapp.com/students',
      headers: { 'Accept' => 'application/json'},
      parameters: {
        job_title: params[:job_title],
        company_name: params[:company_name],
        start_date: params[:start_date],
        end_date: params[:end_date],
        details: params[:details]
      }
    ).body
  end
end
