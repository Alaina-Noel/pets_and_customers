require './lib/pet.rb'
require './lib/groomer.rb'
require './lib/customer.rb'
require './lib/charges.rb'
require 'pry'

RSpec.describe do
  it 'exists' do
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})
    @ellie = Pet.new({name: "Ellie", type: :dog, age: 10})
    @sable = Pet.new({name: "Sable", type: :cat, age: 2})
    @groomer = Groomer.new("Cool Groomers")
    @joel = Customer.new("Joel", 2)
    @joel.adopt(@ellie)
    @joel.adopt(@sable)
    @joel.adopt(@samson)
    @groomer.add_customer(@joel)
    @charge = Charge.new(@groomer, :cut , @joel, @ellie, 40)

    expect(@charge).to be_instance_of(Charge)
  end

  xit 'has attributes' do
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})
    @ellie = Pet.new({name: "Ellie", type: :dog, age: 10})
    @sable = Pet.new({name: "Sable", type: :cat, age: 2})
    @groomer = Groomer.new("Cool Groomers")
    @joel = Customer.new("Joel", 2)
    @joel.adopt(@ellie)
    @joel.adopt(@sable)
    @joel.adopt(@samson)
    @groomer.add_customer(@joel)
    @charge = Charge.new(@groomer, :cut , @joel, @ellie, 40)

    expect(@charge.groomer).to be_instance_of(@groomer)
    #left off here working on this test
    #add more expect assertions for various attributes.


  end







end
