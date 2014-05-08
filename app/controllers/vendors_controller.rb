class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  def sign_in
    @vendors = Vendor.all
  end

  def product_listing
    @vendor = Vendor.find_by(:id => params[:vendor_id])
    @products = @vendor.products
  end

  def add_random_product
    @vendor = Vendor.find_by(:id => params[:vendor_id])
    @vendor.add_random_product
    redirect_to :back
  end

  # GET /vendors
  # GET /vendors.json
  def index
    @vendors = Vendor.all
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
    @vendor
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    respond_to do |format|
      if !Vendor.find_by(username: @vendor.username)
        @vendor.save
        format.html { redirect_to :back, notice: 'Account Successfully Created!' }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      else
        format.html { redirect_to :back, notice: 'User already exists'}
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    Product.delete(@vendor.products)
    @vendor.destroy
    respond_to do |format|
      format.html { redirect_to vendors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:name, :username, :password, :city, :street, :zip, :phone, :created_at, :updated_at)
    end
end
