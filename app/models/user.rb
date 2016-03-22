class User < ActiveRecord::Base
  has_many :projects

  def full_name
    "#{last_name}, #{first_name}"
  end
end
