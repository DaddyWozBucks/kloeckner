require 'rails_helper'

# Test suite for the Item model
RSpec.describe Weather, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should validate_presence_of(:datetime) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:data) }
  
end