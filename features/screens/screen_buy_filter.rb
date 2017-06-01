class ScreenBuyFilter
    def initialize(driver)
        @driver = driver
        @cancel_button = Element.new(:id, 'buy_cancel_text', @driver)
    end

    def visible?
        @cancel_button.visible?
    end

    def close_buy_filter
        @cancel_button.click
    end
end