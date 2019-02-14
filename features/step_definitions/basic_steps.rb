Given("I visit the {string} page") do |string|
    visit root_path
end

Given("The following users exist") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

When("I click on {string}") do |button_name|
    click_on button_name
end


When("I fill in {string} with {string}") do |field, input|
  fill_in field, with: input
end

When("I click on {string}") do |button_name|
    click_on button_name
end

When("I fill in {string} with {string}") do |user_key, user_value|
    fill_in user_key, with: user_value
end

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
