class CartItem
  attr_reader :product_id, :quantity # 方便外部取用????

  def initalize(product_id, quantity = 1) # 初始化時收兩兩個參數
    @product_id = product_id
    @quantity = quantity
  end

  def increment(n = 1) # 接收新增的數量，預設為1
    @quantity += n
  end
end