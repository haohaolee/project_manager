class Project < ActiveRecord::Base
  belongs_to :user

  def name
    name = read_attribute(:name).presence
    unless name.present?
      name = "#{user.full_name}'s project'" if user.present?
    end
    name
  end
end
