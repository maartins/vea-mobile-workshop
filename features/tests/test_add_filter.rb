require_relative '../config/filters'
class TestAddFilter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def set_filter(name)
    @filter_data = Filter.new(name)
  end

  def select_category
    @screens.screen_create_filter.visible?
    @screens.screen_create_filter.select_category(@filter_data.category)
    @screens.screen_select_sub_category.visible?(@filter_data.category)
  end

  def select_sub_category(sub_cat_hash)
    sleep(0.2)
    @screens.screen_select_sub_category.visible?(sub_cat_hash['title'])
    @screens.screen_select_sub_category.select_sub_category(
      sub_cat_hash['option']
    )
  end

  def open_filter_parameter_screen
    select_category
    @filter_data.sub_categories.each do |sub_category|
      select_sub_category(sub_category)
    end
  end

  def input_parameter(par)
    @screens.screen_input_parameters.input_parameter(par)
  end

  def save_filter
    @screens.screen_input_parameters.save_filter
  end

  def input_filter_parameters
    if @filter_data.parameters.size > 0
      @filter_data.parameters.each do |par|
        input_parameter(par)
      end
    end
    save_filter
  end
end
