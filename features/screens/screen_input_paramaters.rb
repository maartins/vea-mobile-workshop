class ScreenInputParameters
    def initialize(driver)
        @driver = driver
        @save_button = Element.new(:id, 'save_filter', @driver)
    end

    def input_parameter(par)
        if par['right'] == ''
            name_textbox = Element.new(:id, 'param_filter_name', @driver)
            name_textbox.send_keys par['left']
        else
            right_textboxes = Element.new(:id, 'right_param', @driver)
            right_textboxes.send_keys par['right']

            left_textboxes = Element.new(:id, 'left_param', @driver)
            left_textboxes.send_keys par['left']
        end
    end

    def save_filter
        @save_button.click
    end
end