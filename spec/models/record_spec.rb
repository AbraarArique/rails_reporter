require 'rails_helper'

RSpec.describe Record, type: :model do
  it 'validates that reporter is present' do
    r = build(:record, reporter: nil)
    expect(r.save).to be false
  end

  it 'validates that email is present' do
    r = build(:record, email: nil)
    expect(r.save).to be false
  end

  it 'validates that description is present' do
    r = build(:record, description: nil)
    expect(r.save).to be false
  end
end
