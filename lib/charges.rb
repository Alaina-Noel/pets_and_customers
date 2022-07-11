class Charge
  attr_reader :purpose, :customer, :customer_pet, :amount, :groomer

  def initialize(groomer, purpose, customer, customer_pet, amount)
    @groomer = groomer
    @purpose = purpose
    @customer = customer
    @customer_pet = customer_pet
    @amount = amount
  end

end
