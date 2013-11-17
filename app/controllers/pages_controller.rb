class PagesController < ApplicationController
  def welcome
    @publication = Publication.last
  end
end
