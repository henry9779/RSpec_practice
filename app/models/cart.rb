class Cart
  attr_reader :item # 讓內外部可以存取 initialize 的實體變數

  def initialize
    @item = [] # 初始化給一個空陣列
  end

  def add_item(product_id)
    #@item << product_id  如果增加就將商品號傳進去，沒驗證改寫
    found_item = items.find { |item| item.product_id == product_id } # 看item的p_id是否跟傳進來的一樣????哪來的items

    if found_item # 如果是就增加數量
      found_item.increment
    else # 如果否就用CartItem類別做一個物件給 @item
      @item << CartItem.new(product_id)
    end
  end

  def empty?
    @item.empty? # 回@item陣列是否為空
  end

end