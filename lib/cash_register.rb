class Cash_Register
  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item_title, cost, quantity = 1)
    self.total += cost * quantity
    quantity.times do
      items << item_title
    end
    self.last_transaction = cost * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply"
    else
    self.total -= total * discount / 100
    return "After the discount, the total comes to $#{self.total}."
    end
  end

    def void_last_transaction
      self.total -= self.last_transaction
    end
end
