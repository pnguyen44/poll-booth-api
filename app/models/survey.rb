# app/models/todo.rb
class Survey < ApplicationRecord
  # model association
  has_many :options, dependent: :destroy

  # validations
  # validates_presence_of :title, :question
  validates :title, :question, presence: true
end
