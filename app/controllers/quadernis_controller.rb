class QuadernisController < ApplicationController
  before_action :set_quaderni, only: %i[ show edit update destroy ]

  # GET /quadernis or /quadernis.json
  def index
    @quadernis = Quaderni.all
  end

  # GET /quadernis/1 or /quadernis/1.json
  def show
  end

  # GET /quadernis/new
  def new
    @quaderni = Quaderni.new
  end

  # GET /quadernis/1/edit
  def edit
  end

  # POST /quadernis or /quadernis.json
  def create
    @quaderni = Quaderni.new(quaderni_params)

    respond_to do |format|
      if @quaderni.save
        format.html { redirect_to quaderni_url(@quaderni), notice: "Quaderni was successfully created." }
        format.json { render :show, status: :created, location: @quaderni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quaderni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quadernis/1 or /quadernis/1.json
  def update
    respond_to do |format|
      if @quaderni.update(quaderni_params)
        format.html { redirect_to quaderni_url(@quaderni), notice: "Quaderni was successfully updated." }
        format.json { render :show, status: :ok, location: @quaderni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quaderni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quadernis/1 or /quadernis/1.json
  def destroy
    @quaderni.destroy

    respond_to do |format|
      format.html { redirect_to quadernis_url, notice: "Quaderni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quaderni
      @quaderni = Quaderni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quaderni_params
      params.require(:quaderni).permit(:title, :release_date, :file_doc, speaker_ids: [])
    end
end
