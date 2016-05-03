class StudentsController < ApplicationController
  def index
    @crimes = Unirest.get("https://data.cityofchicago.org/resource/ijzp-q8t2.json").body
    render 'index.html.erb'
  end
end
