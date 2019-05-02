# app/serializer/option_serializer.rb
class OptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :vote_count, :survey_id
end
