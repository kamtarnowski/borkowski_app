class GalleriesController < ApplicationController
  before_action :correct_admin
  before_action :correct_gallery

  def edit
  end

  def update
    if @gallery.update_attributes(gallery_params)
      flash[:notice] = 'Zaktualizowano dane.'
      redirect_to request.referrer
    else
      flash[:notice] = 'Nieudana aktualizacja danych.'
      render 'edit'
    end
  end

  def show
  end

  def correct_gallery
    @gallery = Gallery.find(1)
  end

  private

  def gallery_params
    params.require(:gallery).permit(:title, :title_footer,
               :met_title, :met_description, :met_keywords, :content_top, :content_bottom)
  end

end
