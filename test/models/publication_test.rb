require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  
  test "the creation of an empty publication" do
    publication = Publication.new
    assert_not publication.valid?, "Validated the publication with no title and no content"
    assert_equal "can't be blank", publication.errors[:title].first, "No error message when no title is specified"
    assert_equal "can't be blank", publication.errors[:content].first, "No error message when no content is specified"
  end

  test "the creation of a publication with a thumbnail image" do
    publication = Publication.new title: "My publication with a thumbnail", content: "Hello publication"
    publication.thumbnail = attachments('banner.jpg')
    assert publication.valid?
  end

  test "the creation of a publication with a non-image file thumbnail" do
    publication = Publication.new title: "My publication with a thumbnail", content: "Hello publication"
    publication.thumbnail = attachments('text.txt')
    assert_not publication.valid?
  end

  test "the creation of a publication with a big image file" do
    publication = Publication.new title: "My publication with a thumbnail", content: "Hello publication"
    publication.thumbnail = attachments('big_file.png')
    assert_not publication.valid?
  end
end
