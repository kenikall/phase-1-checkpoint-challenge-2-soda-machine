require_relative "soda.rb"

class SodaMachine
  attr_reader :sodas, :cash
  @@inventory = 0

  def initialize(args = {})
    @sodas = args[:sodas]
    self.class.add_soda(@sodas.length)
    @cash = args[:cash]
  end

  def self.current_inventory_count
    return @@inventory
  end

  def find_soda(soda_brand)
    @sodas.each{|x| return x.brand if x.brand == soda_brand}
  end

  def sell(soda_brand)
    find_soda(soda_brand)
  end

  private
  def self.add_soda(count)
    @@inventory += count
  end
end



SodaMachine.new(sodas: [Soda.new(brand: 'Pepsi', price: 0.65), Soda.new(brand: 'Mountain Dew', price: 0.75),Soda.new(brand: 'Coke Zero', price: 1.00), Soda.new(brand: 'Pepsi', price: 0.65)], cash: 1.00)

p SodaMachine.current_inventory_count
