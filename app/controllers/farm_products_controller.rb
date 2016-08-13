class FarmProductsController < ApplicationController
    before_action :set_farm_product, only: [:show, :edit, :update, :destroy]
    require 'rest-client'
    require 'json'
    # GET /farm_products
    # GET /farm_products.json
    def index
      # @prices = Price.where(name:['木瓜(元/公斤)','蘿蔔(元/公斤)','香菇(太空包)乾(元/公斤)']).order(:name)
        @farm_products = FarmProduct.where(county:['台中市']).order(:ptype,:month)
        get_json
    end

    def get_json
        p '---start---'
        url = 'http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=061'
        response = RestClient.get(url)
        price_data = JSON.parse(response)
        # 以下為Json格式
        # p JSON.parse(response)
        # p price_data["作物"]
        #FarmProduct.destroy_all
        price_data.each do |u|
          u["variety"].to_s
            FarmProduct.create(
                         ptype: u["type"], month: u["month"],
                         crop: u["crop"], variety: u["variety"],
                         county: u["county"], town: u["town"]
                          )
        end

        # p price_data[0]
        # p price_data[11]["5月價格"]
    end

    # GET /farm_products/1
    # GET /farm_products/1.json
    def show
    end

    # GET /farm_products/new
    def new
        @farm_product = FarmProduct.new
    end

    # GET /farm_products/1/edit
    def edit
    end

    # POST /farm_products
    # POST /farm_products.json
    def create
        @farm_product = FarmProduct.new(farm_product_params)

        respond_to do |format|
            if @farm_product.save
                format.html { redirect_to @farm_product, notice: 'Farm product was successfully created.' }
                format.json { render :show, status: :created, location: @farm_product }
            else
                format.html { render :new }
                format.json { render json: @farm_product.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /farm_products/1
    # PATCH/PUT /farm_products/1.json
    def update
        respond_to do |format|
            if @farm_product.update(farm_product_params)
                format.html { redirect_to @farm_product, notice: 'Farm product was successfully updated.' }
                format.json { render :show, status: :ok, location: @farm_product }
            else
                format.html { render :edit }
                format.json { render json: @farm_product.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /farm_products/1
    # DELETE /farm_products/1.json
    def destroy
        @farm_product.destroy
        respond_to do |format|
            format.html { redirect_to farm_products_url, notice: 'Farm product was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_farm_product
        @farm_product = FarmProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farm_product_params
        params.require(:farm_product).permit(:type, :month, :crop, :variery, :county, :town)
    end
end
