require 'spec_helper'


describe Project do
  it 'should be named after the user if no is set' do
    full_name = random_name
    user = double User, full_name: full_name
    project = Project.new
    allow(project).to receive(:user).and_return user
    expect(project.name).to eq("#{full_name}'s project")
  end
end
