ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Return a File `object` opening a file the `attachments` fixture folder
  def attachments(filename)
    fixture_file = Rails.root.join('test', 'fixtures', 'attachments', filename)
    return File.new(fixture_file)
  end
end
