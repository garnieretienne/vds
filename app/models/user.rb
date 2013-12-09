class User < ActiveRecord::Base
  devise :database_authenticatable

  # Default string representation is the User name capitalized
  def to_s
    username.capitalize
  end
end
