require 'spec_helper'

describe ProjectsController do
  it 'should check if a user is team members' do
    user = double
    project = mock_model Project
    allow_any_instance_of(ProjectsController).to receive(:current_user).and_return user
    allow(Project).to receive(:find).and_return project
    expect(user).to receive(:member_of?).with(project)
    get :show, id: project.id
  end
end