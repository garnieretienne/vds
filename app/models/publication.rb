class Publication < ActiveRecord::Base

  # Thumbnail attachement through paperclip
  has_attached_file :thumbnail

  # Thumbnail must be an image file
  validates_attachment :thumbnail, 
    content_type: {content_type: ["image/gif", "image/jpeg", "image/pjpeg", "image/png", "image/jpg"]},
    size: { in: 0..1.megabytes }

  # A publication must contain at least a title and a content
  validates :title, :content, presence: true
end
