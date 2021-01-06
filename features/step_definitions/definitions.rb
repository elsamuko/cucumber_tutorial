# regex syntax
Given(/^the number (\d+)$/) do |arg1|
  # keep arg1 in the global variable num
  @num = arg1.to_i
end

# expression syntax, needs cucumber > 3.0
# https://cucumber.io/docs/cucumber/cucumber-expressions/
When("I add {float}") do |arg1|
  @num += arg1
end

Then(/^I get (\d+\.\d+)$/) do |arg1|
  expect(@num).to eq arg1.to_f
end
