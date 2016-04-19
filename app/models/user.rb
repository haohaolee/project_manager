class User < ActiveRecord::Base
  has_many :projects
  has_many :memberships

  def full_name
    "#{last_name}, #{first_name}"
  end

  def member_of? project
    memberships.where(project_id: project.id).exists?
  end
end
