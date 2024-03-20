class MinotaursController < ApplicationController
  before_action :set_minotaur, only: %i[ show edit update destroy ]

  # GET /minotaurs or /minotaurs.json
  def index
    @minotaurs = Minotaur.all
  end

  # GET /minotaurs/1 or /minotaurs/1.json
  def show
  end

  # GET /minotaurs/new
  def new
    @minotaur = Minotaur.new
  end

  # GET /minotaurs/1/edit
  def edit
  end

  # POST /minotaurs or /minotaurs.json
  def create
    @minotaur = Minotaur.new(minotaur_params)

    respond_to do |format|
      if @minotaur.save
        format.html { redirect_to minotaur_url(@minotaur), notice: "Minotaur was successfully created." }
        format.json { render :show, status: :created, location: @minotaur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @minotaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minotaurs/1 or /minotaurs/1.json
  def update
    respond_to do |format|
      if @minotaur.update(minotaur_params)
        format.html { redirect_to minotaur_url(@minotaur), notice: "Minotaur was successfully updated." }
        format.json { render :show, status: :ok, location: @minotaur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @minotaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minotaurs/1 or /minotaurs/1.json
  def destroy
    @minotaur.destroy!

    respond_to do |format|
      format.html { redirect_to minotaurs_url, notice: "Minotaur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minotaur
      @minotaur = Minotaur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def minotaur_params
      params.fetch(:minotaur, {})
    end
end
