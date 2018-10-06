class AudioClipsController < ApplicationController
  before_action :set_audio_clip, only: [:show, :edit, :update, :destroy]

  # GET /audio_clips
  def index
    @audio_clips = AudioClip.all
  end

  # GET /audio_clips/1
  def show
  end

  # GET /audio_clips/new
  def new
    @audio_clip = AudioClip.new
  end

  # GET /audio_clips/1/edit
  def edit
  end

  # POST /audio_clips
  def create
    @audio_clip = AudioClip.new(audio_clip_params)

    if @audio_clip.save
      redirect_to @audio_clip, notice: 'Audio clip was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /audio_clips/1
  def update
    if @audio_clip.update(audio_clip_params)
      redirect_to @audio_clip, notice: 'Audio clip was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /audio_clips/1
  def destroy
    @audio_clip.destroy
    redirect_to audio_clips_url, notice: 'Audio clip was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audio_clip
      @audio_clip = AudioClip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def audio_clip_params
      params.require(:audio_clip).permit(:title)
    end
end
