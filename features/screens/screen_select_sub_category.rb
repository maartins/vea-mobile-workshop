class ScreenSelectSubcategory
    def initialize(driver)
        @driver = driver
        @sub_category = Element.new(:id, 'category_name', @driver)
    end

    def visible?(title)
        @driver.wait { @driver.text(title).displayed? }
        @sub_category.visible?
    end

    def select_sub_category(name)
        visible = false
        @sub_category.find_elements.each do |cat|
            next unless cat.text == name
            cat.click
            visible = true
            break
        end
        @driver.scroll_to_exact(name).click unless visible
    end
end