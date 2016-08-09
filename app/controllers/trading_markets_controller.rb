class TradingMarketsController < ApplicationController
    before_action :set_trading_market, only: [:show, :edit, :update, :destroy]
    require 'rest-client'
    require 'json'

    # GET /trading_markets
    # GET /trading_markets.json
    def index
        @trading_markets = TradingMarket.all.order(:crop_number)
  #      url = 'http://m.coa.gov.tw/OpenData/FarmTransData.aspx'
  #      response = RestClient.get(url)
  #      trading_markets = JSON.parse(response)
        # 以下為Json格式
        # p JSON.parse(response)
        # p price_data["作物"]
  #      TradingMarket.destroy_all
  #      trading_markets.each do |u|
  #          TradingMarket.create(trading_date: u["交易日期"],
  #           crop_number: u["作物代號"],crop_name: u["作物名稱"],
  #           market_name: u["市場代號"],market_number: u["市場名稱"],
  #           on_price: u["上價"],the_price: u["中價"],by_price: u["下價"],
  #           avg_price: u["平均價"],tranding_price: u["交易量"])
  #      end
    end

    # GET /trading_markets/1
    # GET /trading_markets/1.json
    def show
    end

    # GET /trading_markets/new
    def new
        @trading_market = TradingMarket.new
    end

    # GET /trading_markets/1/edit
    def edit
    end

    # POST /trading_markets
    # POST /trading_markets.json
    def create
        @trading_market = TradingMarket.new(trading_market_params)

        respond_to do |format|
            if @trading_market.save
                format.html { redirect_to @trading_market, notice: 'Trading market was successfully created.' }
                format.json { render :show, status: :created, location: @trading_market }
            else
                format.html { render :new }
                format.json { render json: @trading_market.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /trading_markets/1
    # PATCH/PUT /trading_markets/1.json
    def update
        respond_to do |format|
            if @trading_market.update(trading_market_params)
                format.html { redirect_to @trading_market, notice: 'Trading market was successfully updated.' }
                format.json { render :show, status: :ok, location: @trading_market }
            else
                format.html { render :edit }
                format.json { render json: @trading_market.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /trading_markets/1
    # DELETE /trading_markets/1.json
    def destroy
        @trading_market.destroy
        respond_to do |format|
            format.html { redirect_to trading_markets_url, notice: 'Trading market was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_trading_market
        @trading_market = TradingMarket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trading_market_params
        params.fetch(:trading_market, {})
    end
end
