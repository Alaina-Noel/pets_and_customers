#groomers can count total number of pets of a given type

class Groomer
  attr_reader :name, :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def find_customers_with_balance
    @customers.select do |customer|
      customer.outstanding_balance > 0
    end
  end


  def find_pet_count_by_type(pet_type)
    customers_with_given_pet_type = []
    @customers.each do |customer|
        result = customer.pets.select do |pet|
          pet.type == pet_type
        end
      customers_with_given_pet_type << result
    end
    customers_with_given_pet_type.flatten.count
    end



    # @customers.pets.flatten
    #This method needs to go into the customers array,
    #Then go through each customer one at a time
    #Customer#1 (@joel) - identify their pet by type.
    #if their pet by type matches pet_type that pet gets counted.

    #Customer#2 - has two pets & we need to be able to go through each of
    #hteir pets & see if they shoudl be added to the count.

    #tally method - enumerable keeps a count of total times a condition it met
    #flatten method - takes nested array makes it singular
    #count - returns a number

    #instead of flatten use an until method that looks at the array of
    #customers pets. Loop this until array.length == number of times we loops



end























































# class Groomer
#   attr_reader :name,
#               :customers
#
#   def initialize(name)
#     @name = name
#     @customers = []
#   end
#
#   def add_customer(customer)
#     @customers << customer
#   end
#
#   def customers_with_oustanding_balances
#     @customers.find_all do |customer|
#       customer.outstanding_balance != 0
#     end
#   end
#
#   def number_of_pets(type)
#     pets = @customers.map do |customer|
#       customer.pets
#     end.flatten
#     pets.count do |pet|
#       pet.type == type
#     end
#   end
# end
