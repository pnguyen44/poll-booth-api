# app/controllers/surveys_controller.rb
class SurveysController < ApplicationController
  before_action :set_survey, only: %i[show update destroy]

  # GET /surveys
  def index
    @surveys = Survey.all
    render json: @surveys
  end

  # GET /surveys/1

  def show
    render json: @survey
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      render json: @survey, status: :created
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_survey
    @survey = Survey.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def survey_params
    params.require(:survey).permit(:title, :description, :question, :created_by)
  end
end
