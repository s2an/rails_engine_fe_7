class MerchantFacade
  def initialize(merchant_id = nil)
    @merchant_id = merchant_id
  end

  def merchants
    data = MerchantService.new.merchants[:data]
    data.map do |merchant_data|
      Merchant.new(merchant_data[:attributes])
    end
  end
end