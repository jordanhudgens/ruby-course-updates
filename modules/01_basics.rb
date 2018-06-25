module BillingHelper
  def self.tax_due(total:, rate: 0.06)
    total * rate
  end
end

BillingHelper.tax_due(total: 10)
BillingHelper.tax_due(total: 10, rate: 0.09)
