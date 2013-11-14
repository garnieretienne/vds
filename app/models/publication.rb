class Publication < ActiveRecord::Base

  # A publication must contain at least a title and a content
  validates :title, :content, presence: true
end
