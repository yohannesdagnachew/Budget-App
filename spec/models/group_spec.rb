require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:all) do
    @category1 = Group.create(name: 'Category 1', user_id: 1)
  end

  it 'should be invalid wihtout a name' do
    @category1.name = nil
    expect(@category1).to be_invalid
  end

  it 'should be invalid wihtout a user' do
    @category1.user_id = nil
    expect(@category1).to be_invalid
  end
end