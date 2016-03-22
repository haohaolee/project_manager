class Project < ActiveRecord::Base
  belongs_to :user

  def name
    read_attribute(:name).presence || "Hao Li's project"
  end
end
