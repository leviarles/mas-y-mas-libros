class DetailordersController < ApplicationController
  before_action :set_detailorder, only: [:show, :edit, :update, :destroy]

  # GET /detailorders
  # GET /detailorders.json
  def index
    @detailorders = Detailorder.all
  end

  # GET /detailorders/1
  # GET /detailorders/1.json
  def show
  end

  # GET /detailorders/new
  def new
    @detailorder = Detailorder.new
  end

  # GET /detailorders/1/edit
  def edit
  end

  # POST /detailorders
  # POST /detailorders.json
  def create
    @detailorder = Detailorder.new(detailorder_params)

    respond_to do |format|
      if @detailorder.save
        format.html { redirect_to @detailorder, notice: 'Detailorder was successfully created.' }
        format.json { render :show, status: :created, location: @detailorder }
      else
        format.html { render :new }
        format.json { render json: @detailorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detailorders/1
  # PATCH/PUT /detailorders/1.json
  def update
    respond_to do |format|
      if @detailorder.update(detailorder_params)
        format.html { redirect_to @detailorder, notice: 'Detailorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @detailorder }
      else
        format.html { render :edit }
        format.json { render json: @detailorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detailorders/1
  # DELETE /detailorders/1.json
  def destroy
    @detailorder.destroy
    respond_to do |format|
      format.html { redirect_to detailorders_url, notice: 'Detailorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detailorder
      @detailorder = Detailorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detailorder_params
      params.require(:detailorder).permit(:book_id, :cantidad, :sale_id)
    end
end
