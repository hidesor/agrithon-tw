class WeatherTestsController < ApplicationController
  before_action :set_weather_test, only: [:show, :edit, :update, :destroy]

  # GET /weather_tests
  # GET /weather_tests.json
  def index
    @weather_tests = WeatherTest.all
  end

  # GET /weather_tests/1
  # GET /weather_tests/1.json
  def show
  end

  # GET /weather_tests/new
  def new
    @weather_test = WeatherTest.new
  end

  # GET /weather_tests/1/edit
  def edit
  end

  # POST /weather_tests
  # POST /weather_tests.json
  def create
    @weather_test = WeatherTest.new(weather_test_params)

    respond_to do |format|
      if @weather_test.save
        format.html { redirect_to @weather_test, notice: 'Weather test was successfully created.' }
        format.json { render :show, status: :created, location: @weather_test }
      else
        format.html { render :new }
        format.json { render json: @weather_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weather_tests/1
  # PATCH/PUT /weather_tests/1.json
  def update
    respond_to do |format|
      if @weather_test.update(weather_test_params)
        format.html { redirect_to @weather_test, notice: 'Weather test was successfully updated.' }
        format.json { render :show, status: :ok, location: @weather_test }
      else
        format.html { render :edit }
        format.json { render json: @weather_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weather_tests/1
  # DELETE /weather_tests/1.json
  def destroy
    @weather_test.destroy
    respond_to do |format|
      format.html { redirect_to weather_tests_url, notice: 'Weather test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather_test
      @weather_test = WeatherTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weather_test_params
      params.require(:weather_test).permit(:date_a)
    end
end
