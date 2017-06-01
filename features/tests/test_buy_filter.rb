class TestBuyFilter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def close_buy_filter
    @screens.screen_buy_filter.visible?
    @screens.screen_buy_filter.close_buy_filter
  end
end