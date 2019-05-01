# frozen_string_literal: true

# app/controllers/options_controller.rb
class OptionsController < ApplicationController
  before_action :set_option, only: %i[show update destory]
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


  # Use callbacks to share common setup or constraints between actions.

  def set_option
    @option = @survey.options.find_by!(id: params[:id]) if @survey
  end

  def set_survey
    # survey_id = option_params[:survey_id]
    puts "TEST =.......... #{params[:survey_id]}"
    @survey = Survey.find(3)
  end

  # Only allow a trusted parameter "white list" through.
  def option_params
    params.require(:option).permit(:name, :vote_count, :survey_id)
  end
end
