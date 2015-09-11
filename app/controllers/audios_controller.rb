class AudiosController < ApplicationController
  
  def index
    @audios = Audio.all.order(created_at: :desc)
    @audio = Audio.new
  end

  def create
    @audio = Audio.new(audio_params)
    if @audio.save
      redirect_to audios_path, notice: "The Audio has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @audio = Audio.find(params[:id])
    @audio.destroy
    redirect_to audios_path, notice:  "The Audio has been deleted."
  end

  private
  def audio_params
    params.require(:audio).permit(:attachment)
  end
end
