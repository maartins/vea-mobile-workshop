class Screens
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end
  def screen_intro
    @screen_intro_welcome ||= ScreenIntro.new @driver
    @screen_intro_welcome
  end

  def screen_create_filter
    @screen_create_filter ||= ScreenCreateFilter.new @driver
    @screen_create_filter
  end

  def screen_select_sub_category
    @screen_select_sub_category ||= ScreenSelectSubcategory.new @driver
    @screen_select_sub_category
  end

  def screen_input_parameters
    @screen_input_parameters ||= ScreenInputParameters.new @driver
    @screen_input_parameters
  end

  def screen_buy_filter
    @screen_buy_filter ||= ScreenBuyFilter.new @driver
    @screen_buy_filter
  end
end
