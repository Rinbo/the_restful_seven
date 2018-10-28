# frozen_string_literal: true

Then('I should see {string}') do |content|
  expect(page).to have_content content
end

Then('I should see {string} element') do |element|
  expect(page).to have_css element
end

Then("I click the {string} button") do |button|
  click_button button
end

Then("I should see {string} link") do |link|
  expect(page).to have_content link
end

Then("I see the message {string}") do |notice|
  expect(page).to have_css(".notice"), "Welcome! You have signed up successfully."
end

Then("I should not see {string}") do |content|
  expect(page).not_to have_content content
end

Then("I should see {string} within the {string} section") do |content, categories|
  within(:css, '#categories') {
    expect(page).to have_content content 
  }  
end

Then("stop") do
  binding.pry
end

Then("I should see {string} within {string} row") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end