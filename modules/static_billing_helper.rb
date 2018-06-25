module BillingHelper
  def self.tax_due(total:, rate: 0.06)
    total * rate
  end
end
