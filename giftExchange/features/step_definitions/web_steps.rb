When("I click on the {string} button") do |page_name|
  click_button page_name
end

When("I click on the {string} link") do |page_name|
  within('tr') do
    within('td') do
  click_link page_name
end
end
end

Then("I should be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should see the {string} field") do |field_name|
  expect(page).to have_field(field_name)
end


Given("I am on the create Xchange room page") do
   visit rooms_path
end

#create user testing


Given("I fill in {string} with {string}") do |field_name, user_info|
  fill_in field_name, :with => user_info
end

Then("I should see {string}") do |info|
  expect(page).to have_content(info)
end

