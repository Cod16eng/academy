class WebinarsController < ApplicationController
  before_action :set_webinar, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_admin, only: [:show]
  skip_before_action :require_user, only: [:show, :archivio]

  # GET /webinars
  # GET /webinars.json
  def index
    @webinars = Webinar.paginate(page: params[:page], per_page: 6).order('created_at DESC')
  end

  # GET /webinars/1
  # GET /webinars/1.json
  def show
    @webinar_slides = @webinar.uploads.where.not(upload: [nil, ""])
    @no_slides = @webinar.uploads.where(upload: [nil, ""])
  end


  # GET /webinars/new
  def new
    @webinar = Webinar.new
  end

  # GET /webinars/1/edit
  def edit
  end

  # POST /webinars
  # POST /webinars.json
  def create
    @webinar = Webinar.new(webinar_params)
    @webinar.user = current_user
    respond_to do |format|
      if @webinar.save

        format.html { redirect_to @webinar, notice: 'Webinar was successfully created.' }
        format.json { render :show, status: :created, location: @webinar }
      else
        format.html { render :new }
        format.json { render json: @webinar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webinars/1
  # PATCH/PUT /webinars/1.json
  def update
    respond_to do |format|
      if @webinar.update(webinar_params)
        format.html { redirect_to @webinar, notice: 'Webinar was successfully updated.' }
        format.json { render :show, status: :ok, location: @webinar }
      else
        format.html { render :edit }
        format.json { render json: @webinar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webinars/1
  # DELETE /webinars/1.json
  def destroy
    @webinar.destroy
    respond_to do |format|
      format.html { redirect_to webinars_url, notice: 'Webinar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def archivio
    @webinars = Webinar.passed.paginate :page => params[:page], :per_page => 6

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webinar
      @webinar = Webinar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def webinar_params
      params.require(:webinar).permit(:title, :program, :date_from, :date_to, :web_link, :accreditated, :category_id, :user_id, speaker_ids: [])
    end
end
