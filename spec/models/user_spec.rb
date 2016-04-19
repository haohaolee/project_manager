require 'spec_helper'

describe User do
  it 'should query a membership' do
    memberships = double
    user = User.new
    project = mock_model Project
    allow(user).to receive(:memberships).and_return memberships
    expect(memberships).to receive(:where).with project_id: project.id
    user.member_of? project
  end
end
