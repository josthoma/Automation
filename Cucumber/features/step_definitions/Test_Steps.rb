require 'watir-webdriver'
require 'rubygems'
require 'colorize'

browser= Watir::Browser.new :chrome

Given("I am on Google homepage") do
  browser.goto "http://google.com"
end

When("Type search string") do
  browser.text_field(:name => 'q').set'Nokia'
  #browser.h3s(:class=>'r')[0].click 
  browser.button(:name => 'btnK').click
end

Then("Google provides search results for Nokia") do
  if browser.text.include?"Nokia is a global leader in innovations such as mobile networks, digital health and phones. See how we create technology to connect."
    puts "Nokia search text validated"
  end
  browser.close
end


