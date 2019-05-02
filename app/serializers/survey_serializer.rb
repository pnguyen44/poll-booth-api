# frozen_string_literal: true

# app/serializer/survey_serializer.rb
class SurveySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :question, :created_by
  has_many :options
end

# def options
#   object.options.pluck(:id)
# end
