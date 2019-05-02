# frozen_string_literal: true

# app/controllers/options_controller.rb
class OptionsController < ApplicationController
  before_action :set_survey, only: %i[create]
  before_action :set_option, only: %i[show update destroy]

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
    option = @survey.options.new(option_params)
    if @survey && option.save
      render json: @option, status: :created
    else
      render json: @option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /options/1
  def update
    if @option.update(option_params)
      head :no_content
    else
      render json: @option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /options/1
  def destroy
    @option.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_option
    @option = Option.find(params[:id])
    # @option = @survey.options.find_by(id: params[:id]) if @survey
  end

  def set_survey
    survey_id = option_params[:survey_id]
    @survey = Survey.find(survey_id)
  end

  # Only allow a trusted parameter "white list" through.
  def option_params
    params.require(:option).permit(:name, :vote_count, :survey_id)
  end
end
