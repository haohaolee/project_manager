require 'spec_helper'


describe Project do
  it 'should be named after the user if no is set' do
    first_name, last_name = 2.times.map { random_name }
    user = User.new first_name: first_name, last_name: last_name
    project = Project.new
    project.user = user
    expect(project.name).to eq("#{first_name} #{last_name}'s project")
  end
end
