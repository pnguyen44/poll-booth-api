# app/controllers/surveys_controller.rb
class SurveysController < ApplicationController
  before_action :set_survey, only: %i[show update destroy]

  # GET /surveys
  def index
    @surveys = Survey.all
    render json: @surveys
  end
end
