class SpeakersController < ApplicationController
  before_action :set_speaker, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_user, only: [:index, :show]
  skip_before_action :require_admin, only: [:index, :show]

  # GET /speakers
  # GET /speakers.json
  def index
    @speakers = Speaker.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end

  # GET /speakers/1
  # GET /speakers/1.json
  def show
  end

  # GET /speakers/new
  def new
    @speaker = Speaker.new
  end

  # GET /speakers/1/edit
  def edit
  end

  # POST /speakers
  # POST /speakers.json
  def create
    @speaker = Speaker.new(speaker_params)

    respond_to do |format|
      if @speaker.save
        format.html { redirect_to @speaker, notice: 'Speaker was successfully created.' }
        format.json { render :show, status: :created, location: @speaker }
      else
        format.html { render :new }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speakers/1
  # PATCH/PUT /speakers/1.json
  def update
    respond_to do |format|
      if @speaker.update(speaker_params)
        format.html { redirect_to @speaker, notice: 'Speaker was successfully updated.' }
        format.json { render :show, status: :ok, location: @speaker }
      else
        format.html { render :edit }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speakers/1
  # DELETE /speakers/1.json
  def destroy
    @speaker.destroy
    respond_to do |format|
      format.html { redirect_to speakers_url, notice: 'Speaker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker
      @speaker = Speaker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def speaker_params
      params.require(:speaker).permit(:first_name, :last_name, :profession_1, :profession_2, :description, :speaker_img)
    end
end
