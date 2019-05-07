# frozen_string_literal: true

# app/serializer/survey_serializer.rb
class SurveySerializer < ActiveModel::Serializer
  attributes :id, :title, :question
  has_many :options
end

# def options
#   object.options.pluck(:id)
# end
