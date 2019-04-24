require 'rails_helper'

# Test suite for the Option model
RSpec.describe Option, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # Association test
  # ensure an option record belongs to a single survey record
  it { should belong_to(:survey) }

  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
