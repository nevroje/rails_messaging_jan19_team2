Given("I visit the site") do
    visit root_path
end
  
When("I click on {string}") do |string|
  expect(page).to have_content string
end

When("I fill in name with {string}") do |field|
  expect(field).to have_content field
end

When("I fill in {string} with {string}") do |field, field2|
  expect(field).to have_content field
end

Then("I click {string}") do |click|
  expect(click).to have_content click
end

Then("I should see {string}") do |string|
  expect(string).to have_content string
end

