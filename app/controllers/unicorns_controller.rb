class UnicornsController < ApplicationController
  before_action :set_unicorn, only: %i[ show edit update destroy ]

  # GET /unicorns or /unicorns.json
  def index
    @unicorns = Unicorn.all
  end

  # GET /unicorns/1 or /unicorns/1.json
  def show
  end

  # GET /unicorns/new
  def new
    @unicorn = Unicorn.new
  end

  # GET /unicorns/1/edit
  def edit
  end

  # POST /unicorns or /unicorns.json
  def create
    @unicorn = Unicorn.new(unicorn_params)

    respond_to do |format|
      if @unicorn.save
        format.html { redirect_to unicorn_url(@unicorn), notice: "Unicorn was successfully created." }
        format.json { render :show, status: :created, location: @unicorn }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unicorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unicorns/1 or /unicorns/1.json
  def update
    respond_to do |format|
      if @unicorn.update(unicorn_params)
        format.html { redirect_to unicorn_url(@unicorn), notice: "Unicorn was successfully updated." }
        format.json { render :show, status: :ok, location: @unicorn }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unicorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unicorns/1 or /unicorns/1.json
  def destroy
    @unicorn.destroy!

    respond_to do |format|
      format.html { redirect_to unicorns_url, notice: "Unicorn was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unicorn
      @unicorn = Unicorn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unicorn_params
      params.fetch(:unicorn, {})
    end
end
