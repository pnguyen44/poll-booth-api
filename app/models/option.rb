# app/models/option.rb
class Option < ApplicationRecord
  # model association
  belongs_to :survey

  # validation
  validates_presence_of :name
end
