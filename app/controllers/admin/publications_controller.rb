class Admin::PublicationsController < ApplicationController
  layout "admin"

  before_action :load_publication, only: [:edit, :update]

  def index
    @publications = Publication.all
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    if @publication.save
      redirect_to admin_publications_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @publication.update(publication_params)
      redirect_to admin_publications_path
    else
      render :edit
    end
  end

  private

  def load_publication
    @publication = Publication.find(params[:id])
  end

  def publication_params
    params.require(:publication).permit(:title, :content, :thumbnail, :delete_thumbnail)
  end
end
