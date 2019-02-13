Given("I visit the site") do
    visit root_path
end
  
When("I click on {string}") do |string|
  click_on string
end

When("I fill in {string} with {string}") do |field, input|
  fill_in field, with: input
end

Then("I click {string}") do |click|
  expect(click).to have_content click
end

Then("I should see {string}") do |string|
  expect(page).to have_content string
end

