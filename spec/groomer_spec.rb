require './lib/pet.rb'
require './lib/groomer.rb'
require './lib/customer.rb'
require 'pry'

RSpec.describe do
  it 'exists' do
    @groomer = Groomer.new("Cool Groomers")

    expect(@groomer).to be_instance_of(Groomer)
  end

  it 'has attributes' do
    @groomer = Groomer.new("Cool Groomers")
    @joel = Customer.new("Joel", 2)

    expect(@groomer.name).to eq("Cool Groomers")
    expect(@groomer.customers).to eq([])

    @groomer.add_customer(@joel)
    expect(@groomer.customers).to eq([@joel])
  end

  it 'can find customers with outstanding balances' do
    @groomer = Groomer.new("Cool Groomers")
    @joel = Customer.new("Joel", 2)
    @groomer.add_customer(@joel)

    expect(@groomer.find_customers_with_balance).to eq([])
    @joel.charge(98)

    expect(@groomer.find_customers_with_balance).to eq([@joel])
  end

  it 'can can count total pets by type' do
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})
    @ellie = Pet.new({name: "Ellie", type: :dog, age: 10})
    @sable = Pet.new({name: "Sable", type: :cat, age: 2})
    @groomer = Groomer.new("Cool Groomers")
    @joel = Customer.new("Joel", 2)
    @una = Customer.new("Una", 1)
    @groomer.add_customer(@joel)
    @groomer.add_customer(@una)
    @una.adopt(@sable)
    expect(@groomer.find_pet_count_by_type(:cat)).to eq(1)
    expect(@groomer.find_pet_count_by_type(:dog)).to eq(0)

    @una.adopt(@ellie)
    expect(@groomer.find_pet_count_by_type(:cat)).to eq(1)
    expect(@groomer.find_pet_count_by_type(:dog)).to eq(1)
    @joel.adopt(@samson)


    expect(@groomer.find_pet_count_by_type(:cat)).to eq(1)
    expect(@groomer.find_pet_count_by_type(:dog)).to eq(2)
  end



end





















































# require './lib/groomer'
# require './lib/customer'
# require './lib/pet'
#
# RSpec.describe Groomer do
#   before(:each) do
#     @groomer = Groomer.new("The Hair Ball")
#   end
#
#   describe "Object" do
#     it "exists" do
#       expect(@groomer).to be_instance_of(Groomer)
#     end
#
#     it "has a name" do
#       expect(@groomer.name).to eq("The Hair Ball")
#     end
#
#     it "starts with no customers" do
#       expect(@groomer.customers).to eq([])
#     end
#   end
#
#   describe "Integrating with Customers" do
#     before(:each) do
#       @joel = Customer.new("Joel", 2)
#       @billy = Customer.new("Billy", 3)
#       @samson = Pet.new({name: "Samson", type: :dog})
#       @lucy = Pet.new({name: "Lucy", type: :cat})
#       @molly = Pet.new({name: "Molly", type: :cat})
#     end
#     it "can add customers" do
#       @groomer.add_customer(@joel)
#       @groomer.add_customer(@billy)
#       expect(@groomer.customers).to eq([@joel, @billy])
#     end
#
#     it "can count the number of pets of a certain type" do
#       @joel.adopt(@samson)
#       @joel.adopt(@lucy)
#       @billy.adopt(@molly)
#       @groomer.add_customer(@joel)
#       @groomer.add_customer(@billy)
#       expect(@groomer.number_of_pets(:cat)).to eq(2)
#     end
#
#     it "can list customers with outstanding balances" do
#       @joel.charge(10)
#       @groomer.add_customer(@joel)
#       @groomer.add_customer(@billy)
#       expect(@groomer.customers_with_oustanding_balances).to eq([@joel])
#     end
#   end
# end
