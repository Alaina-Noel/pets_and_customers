require 'pry'
require './lib/pet.rb'

RSpec.describe do

  it 'exists' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson).to be_instance_of(Pet)
  end

  it 'has attributes' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    expect(samson.name).to eq("Samson")
    expect(samson.type).to eq(:dog)
    expect(samson.age).to eq(3)
  end

  it 'is unfed to start' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson.fed?).to eq(false)
  end

  it 'can be fed & change status of fed' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    expect(samson.fed?).to eq(false)
    samson.feed
    expect(samson.fed?).to eq(true)
  end
end
