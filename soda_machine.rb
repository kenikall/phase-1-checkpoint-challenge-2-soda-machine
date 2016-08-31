class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each{|can| return can if can.brand == soda_brand}
    return nil
  end

  def sell(soda_brand)
    can = find_soda(soda_brand)
    return nil if can == nil
    @sodas.delete_at(@sodas.index(can))
    @cash += can.price
    return can
  end

end
