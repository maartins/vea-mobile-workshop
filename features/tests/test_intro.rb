class TestIntro
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
  end

  def swipe_intro
    @screens.screen_intro.first_view_visible?
    @screens.screen_intro.swipe_left
    @screens.screen_intro.second_view_visible?
    @screens.screen_intro.swipe_left
    @screens.screen_intro.third_view_visible?
  end

  def close_intro
    @screens.screen_intro.first_view_visible?
    @screens.screen_intro.close_intro
  end
end
