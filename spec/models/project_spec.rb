require 'spec_helper'


describe Project do
  it 'should be named after the user if no is set' do
    user = User.new first_name: 'Hao', last_name: 'Li'
    project = Project.new
    project.user = user
    expect(project.name).to be("Hao Li's project")
  end
end
