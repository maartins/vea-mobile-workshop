class ScreenCreateFilter
    def initialize(driver)
        @driver = driver
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Izveidot filtru")]', @driver)
        @category = Element.new(:id, 'main_row_text', @driver)
    end

    def visible?
        @title.visible?
    end

    def select_category(name)
        @category.find_elements.each do |cat|
            if cat.text == name
                cat.click
                break
            end
        end
    end
end