require 'net/http'
class Element
  attr_reader :value
  def initialize(type, value, driver)
    @driver = driver
    @value = Hash[:type => type, :value => value]
  end

  def find
    @driver.find_element(@value[:type], @value[:value])
  end

  def find_elements
    @driver.find_elements(@value[:type], @value[:value])
  end

  def click
    find.click
  end

  def send_keys(string)
    find.send_keys string
  end

  def visible?
    @driver.wait { find.displayed? }
  end

  def displayed?
    find.displayed?
  end
end

