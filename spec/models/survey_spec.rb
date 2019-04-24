require 'rails_helper'

# Test suite for the Survey model

RSpec.describe Survey, type: :model do
  # Association test
  # ensure Survey model has a 1:m relationship with the Option model
  it { should have have_many(:options).dependent(:destroy) }
  # Validation tests
  # ensure columns title, description, question, and created_by are present before saving

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:question) }
  it { should validate_presence_of(:created_by) }

  # pending "add some examples to (or delete) #{__FILE__}"
end
