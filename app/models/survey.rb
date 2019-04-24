# app/models/todo.rb
class Survey < ApplicationRecord
  # model association
  has_many :options, dependent: :destroy

  # validations
  validate_presence_of(:title, :description, :question, :created_by)
end
