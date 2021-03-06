class CartItem
  attr_reader :product_id, :quantity # 方便外部取用????

  def initialize(product_id, quantity = 1) # 初始化時收兩個參數
    @product_id = product_id
    @quantity = quantity
  end

  def increment(n = 1) # 接收新增的數量，預設為1
    @quantity += n
  end

  def product
    Product.find_by(id: product_id)
  end

end