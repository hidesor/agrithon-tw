class FarmCountsController < ApplicationController
  before_action :set_farm_count, only: [:show, :edit, :update, :destroy]

  # GET /farm_counts
  # GET /farm_counts.json
  def index
    @farm_counts = FarmCount.all
  end

  # GET /farm_counts/1
  # GET /farm_counts/1.json
  def show
  end

  # GET /farm_counts/new
  def new
    @farm_count = FarmCount.new
  end

  # GET /farm_counts/1/edit
  def edit
  end

  # POST /farm_counts
  # POST /farm_counts.json
  def create
    @farm_count = FarmCount.new(farm_count_params)

    respond_to do |format|
      if @farm_count.save
        format.html { redirect_to @farm_count, notice: 'Farm count was successfully created.' }
        format.json { render :show, status: :created, location: @farm_count }
      else
        format.html { render :new }
        format.json { render json: @farm_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farm_counts/1
  # PATCH/PUT /farm_counts/1.json
  def update
    respond_to do |format|
      if @farm_count.update(farm_count_params)
        format.html { redirect_to @farm_count, notice: 'Farm count was successfully updated.' }
        format.json { render :show, status: :ok, location: @farm_count }
      else
        format.html { render :edit }
        format.json { render json: @farm_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farm_counts/1
  # DELETE /farm_counts/1.json
  def destroy
    @farm_count.destroy
    respond_to do |format|
      format.html { redirect_to farm_counts_url, notice: 'Farm count was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm_count
      @farm_count = FarmCount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farm_count_params
      params.fetch(:farm_count, {})
    end
end
