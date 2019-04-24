# app/models/option.rb
class Option < ApplicationRecord
  # model association
  belong_to(:survey)

  # validation
  validates_presence_of :name
end
