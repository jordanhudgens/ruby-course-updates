require_relative 'instance_billing_helper.rb'

class Invoice
  include BillingHelper

  def initialize(items)
    @items = items
  end

  def subtotal
    @items.inject(0.0) do |total, item|
      total += item[:cost]
    end
  end

  def total
    subtotal + tax_due(total: subtotal)
  end
end

items = [
  { name: 'Product 1', cost: 120 },
  { name: 'Product 2', cost: 20 },
  { name: 'Product 3', cost: 42 },
]

inv = Invoice.new(items)
puts inv.total
