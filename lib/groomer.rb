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
  all_customers_pets_with_matching_type = []
  @customers.each do |customer|
    each_customers_pets_with_matching_type = customer.pets.select do |pet|
      pet.type == each_customers_pets_with_matching_type
    end
  all_customers_pets_with_matching_type << each_customers_pets_with_matching_type
  end
  all_customers_pets_with_matching_type.flatten.size
end



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
