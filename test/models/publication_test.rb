require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  
  test "the creation of an empty publication" do
    publication = Publication.new
    assert_not publication.valid?, "Validated the publication with no title and no content"
    assert_equal "can't be blank", publication.errors[:title].first, "No error message when no title is specified"
    assert_equal "can't be blank", publication.errors[:content].first, "No error message when no content is specified"
  end
end
