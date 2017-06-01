# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I swipe intro screen$/ do
    if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').size > 0
        $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "OK")]').click
    end
    @tests.test_intro.swipe_intro
end

Given /^I close intro screen$/ do
    if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').size > 0
        $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "OK")]').click
    end
    @tests.test_intro.close_intro
end

Given /^I create empty filter$/ do
    @tests.test_add_filter.set_filter('transport_negative')
    @tests.test_add_filter.open_filter_parameter_screen
    @tests.test_add_filter.input_filter_parameters
end

Given /^I close buy filter screen$/ do
    @tests.test_buy_filter.close_buy_filter
end

Given /^I create filter with name and price$/ do
    @tests.test_add_filter.set_filter('transport_positive')
    @tests.test_add_filter.open_filter_parameter_screen
    @tests.test_add_filter.input_filter_parameters
end
