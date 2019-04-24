# app/models/todo.rb
class Survey < ApplicationRecord
  # model association
  has_many :options, dependent: :destroy

  # validations
  validates_presence_of :title, :description, :question, :created_by
end
