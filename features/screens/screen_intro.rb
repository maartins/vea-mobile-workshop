class ScreenIntro
    def initialize(driver)
        @driver = driver
        @button_to_app = Element.new(:id, 'close_intro', @driver)
    end

    def visible?
        @button_to_app.visible?
    end

    def close_intro
        @button_to_app.click
    end
end