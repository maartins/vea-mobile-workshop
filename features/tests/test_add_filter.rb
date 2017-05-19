require_relative '../config/filters'
class TestAddFilter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
    @filter_data = Filter.new('property_positive')
  end
end
