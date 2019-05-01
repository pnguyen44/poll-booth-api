# frozen_string_literal: true

# app/controllers/options_controller.rb
class OptionsController < ApplicationController
  before_action :set_option, only: %i[show update destroy]
  before_action :set_survey, only: %i[create]

  # GET /options
  def index
    @options = Option.all
    render json: @options
  end

  # GET /options/1
  def show
    render json: @option
  end


  # POST /options
  def create
    puts "..in create..#{@survey.options}"
    option = @survey.options.new(option_params)
    if @survey && option.save
      render json: @option, status: :created
    else
      render json: @option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /options/1
  def destroy
    @option.destroy
    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.

  def set_option
    puts ".......set option.... #{params}"
    @option = @survey.options.find(params[:id]) if @survey
  end

  def set_survey
    survey_id = option_params[:survey_id]
    puts "TEST =.......... #{option_params}"
    @survey = Survey.find(survey_id)
  end

  # Only allow a trusted parameter "white list" through.
  def option_params
    params.require(:option).permit(:name, :vote_count, :survey_id)
  end
end
