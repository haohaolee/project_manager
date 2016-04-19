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

Then(/^the project should be called "([^"]*)"$/) do |project_name|
  expect(find('.project')).to have_content project_name
end

When(/I try to access another user's project/) do
  another_user = User.new first_name: 'Another user'
  @project = Project.new
  @project.user = another_user
  @project.save!
  visit project_path(@project)
end

Then(/I should not see the project/) do
  expect(page.current_path).not_to eq project_path(@project)
end
