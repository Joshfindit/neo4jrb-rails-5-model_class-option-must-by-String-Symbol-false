class UshioProductsController < ApplicationController
  before_action :set_ushio_product, only: [:show, :edit, :update, :destroy]

  # GET /ushio_products
  # GET /ushio_products.json
  def index
    @ushio_products = UshioProduct.all
  end

  # GET /ushio_products/1
  # GET /ushio_products/1.json
  def show
  end

  # GET /ushio_products/new
  def new
    @ushio_product = UshioProduct.new
  end

  # GET /ushio_products/1/edit
  def edit
  end

  # POST /ushio_products
  # POST /ushio_products.json
  def create
    @ushio_product = UshioProduct.new(ushio_product_params)

    respond_to do |format|
      if @ushio_product.save
        format.html { redirect_to @ushio_product, notice: 'Ushio product was successfully created.' }
        format.json { render :show, status: :created, location: @ushio_product }
      else
        format.html { render :new }
        format.json { render json: @ushio_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ushio_products/1
  # PATCH/PUT /ushio_products/1.json
  def update
    respond_to do |format|
      if @ushio_product.update(ushio_product_params)
        format.html { redirect_to @ushio_product, notice: 'Ushio product was successfully updated.' }
        format.json { render :show, status: :ok, location: @ushio_product }
      else
        format.html { render :edit }
        format.json { render json: @ushio_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ushio_products/1
  # DELETE /ushio_products/1.json
  def destroy
    @ushio_product.destroy
    respond_to do |format|
      format.html { redirect_to ushio_products_url, notice: 'Ushio product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ushio_product
      @ushio_product = UshioProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ushio_product_params
      params.require(:ushio_product).permit(:name, :description, :sku, :tagged_id, :related_id)
    end
end
