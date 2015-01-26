class GalleryContentsController < ApplicationController
  before_action :correct_admin

  def create
    @gal_cont = GalleryContent.new(gallery_content_params)
    if @gal_cont.save
      flash[:notice]= 'Dodano zdjęcie.'
      redirect_to request.referrer
    else
      flash[:notice]= 'Niepowodzenie.'
      redirect_to request.referrer
    end
  end

  def destroy
    @gal_cont = GalleryContent.find(params[:id])
    if @gal_cont.destroy
      flash[:notice] = 'Usunięto zdjęcie.'
      redirect_to request.referrer
    else
      flash[:notice] = 'Niepowodzenie.'
      render 'galleries/show'
    end
  end

  private

  def gallery_content_params
    params.require(:gallery_content).permit(:image, :name)
  end

end
