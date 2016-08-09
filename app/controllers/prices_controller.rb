class PricesController < ApplicationController
    before_action :set_price, only: [:show, :edit, :update, :destroy]
    require 'rest-client'
    require 'json'

    # GET /prices
    # GET /prices.json
    def index
        @prices = Price.where(name:'蘿蔔(元/公斤)')
      #  p '---start---'
      #  url = 'http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=652'
      #  response = RestClient.get(url)
      #  price_data = JSON.parse(response)
        # 以下為Json格式
        # p JSON.parse(response)
        # p price_data["作物"]
      #  Price.destroy_all
      #  price_data.each do |u|
      #      Price.create(name: u["作物"], year: u["年份"],
      #      jan: u["1月價格"], feb: u["2月價格"], mar: u["3月價格"],:apr => u["4月價格"], may: u["5月價格"],:jun => u["6月價格"],
      #      jul: u["7月價格"], aug: u["8月價格"], sep: u["9月價格"],:ort => u["10月價格"], nov: u["11月價格"],:dec => u["12月價格"])
        end

        #p price_data[0]
        #p price_data[11]["5月價格"]
    end

    # GET /prices/1
    # GET /prices/1.json
    def show
    end

    # GET /prices/new
    def new
        @price = Price.new
    end

    # GET /prices/1/edit
    def edit
    end

    # POST /prices
    # POST /prices.json
    def create
        @price = Price.new(price_params)

        respond_to do |format|
            if @price.save
                format.html { redirect_to @price, notice: 'Price was successfully created.' }
                format.json { render :show, status: :created, location: @price }
            else
                format.html { render :new }
                format.json { render json: @price.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /prices/1
    # PATCH/PUT /prices/1.json
    def update
        respond_to do |format|
            if @price.update(price_params)
                format.html { redirect_to @price, notice: 'Price was successfully updated.' }
                format.json { render :show, status: :ok, location: @price }
            else
                format.html { render :edit }
                format.json { render json: @price.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /prices/1
    # DELETE /prices/1.json
    def destroy
        @price.destroy
        respond_to do |format|
            format.html { redirect_to prices_url, notice: 'Price was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_price
        @price = Price.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
        params.fetch(:price, {})
    end
end
