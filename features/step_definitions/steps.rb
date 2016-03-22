Given(/^I'm signed up as "([^"]*)"$/) do |name|
  first_name, last_name = name.split ' '
  visit new_user_path
  fill_in :user_first_name, with: first_name
  fill_in :user_last_name, with: last_name
  click_button 'Create User'
end

When(/^I create a project without a name$/) do
  visit projects_path
  click_link 'New Project'
  fill_in :project_name, with: ''
  click_button 'Create Project'
end

Then(/^the project should be called 'Hao Li's project'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
