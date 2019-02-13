Given("I visit the {string} page") do |string|
    visit '/'
end

Given("The following user exist") do |table|
    table.hashes.each do |user|
        User.create!(user)
    end
end

When("I click on {string}") do |string|
    click_on(string)
end

When("I fill in {string} with {string}") do |string, string2|
    fill_in string, with: string2
end

