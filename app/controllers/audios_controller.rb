class AudiosController < ApplicationController
  def index
    @site = Site.find(params[:site_id])
    @audios = Audio.where(site: @site)
  end

  def destroy
    @audio= Audio.find(params[:id])
    @audio.destroy
    redirect_to dashboard_path
  end
end