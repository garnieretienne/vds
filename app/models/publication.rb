class Publication < ActiveRecord::Base

  # Thumbnail attachement through paperclip
  has_attached_file :thumbnail, 
    default_url: ActionController::Base.helpers.asset_path('no_thumbnail.png'),
    styles: { thumb: ["160x40", :jpg] }

  # Thumbnail must be an image file
  validates_attachment :thumbnail, 
    content_type: {content_type: ["image/gif", "image/jpeg", "image/pjpeg", "image/png", "image/jpg"]},
    size: { in: 0..1.megabytes }

  # Support for thumbnail attachment deletion
  def delete_thumbnail
    return false
  end
  def delete_thumbnail=(value)
    self.thumbnail = nil if value != "0"
  end

  # A publication must contain at least a title and a content
  validates :title, :content, presence: true
end
