require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create!(name: 'John', email: 'john@mail.com', password: '12345')
  end

  before { subject.save }

  it 'should have username John' do
    expect(subject.name).to eql('John')
  end

  it 'should have email present' do
    expect(subject.email).to eql('john@mail.com')
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
