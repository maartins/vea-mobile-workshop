class ScreenIntro
    def initialize(driver)
        @driver = driver
        @button_to_app = Element.new(:id, 'close_intro', @driver)
        @first_view = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Atlasi svarīgāko!")]', @driver)
        @second_view = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Veic vajadzīgās izmaiņas!")]', @driver)
        @third_view = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Saņem paziņojumus!")]', @driver)
    end

    def first_view_visible?
        @first_view.visible?
    end

    def second_view_visible?
        @second_view.visible?
    end

    def third_view_visible?
        @third_view.visible?
    end

    def swipe_left
        @driver.swipe(start_x: 300, start_y: 200, delta_x: -290, delta_y: 0)
    end

    def close_intro
        @button_to_app.click
    end
end