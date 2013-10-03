require 'spec_helper'

describe 'Random birth date generator' do

  it 'should generate a random birth date' do
    date = Faker::Date.dob
    expect(date >= Date.new(1900, 1, 1)).to be_true
    expect(date <= Date.today).to be_true
  end

  it 'should generate a random birth date since a certain year' do
    date = Faker::Date.dob(:since => 1950)
    expect(date >= Date.new(1950, 1, 1)).to be_true
    expect(date <= Date.today).to be_true
  end

  it 'should generate a randon birth date until a certain year' do
    date = Faker::Date.dob(:until => 1900)
    expect(date >= Date.new(1900, 1, 1)).to be_true
    expect(date <= Date.new(1900, 12, 31)).to be_true
  end

  it 'should generate a random birth date in a specified year range' do
    date = Faker::Date.dob(:since => 1950, :until => 1952)
    expect(date >= Date.new(1950, 1, 1)).to be_true
    expect(date <= Date.new(1952, 12, 31)).to be_true
  end
end