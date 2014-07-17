class DetailsalesController < ApplicationController
  before_action :set_detailsale, only: [:show, :edit, :update, :destroy]

  # GET /detailsales
  # GET /detailsales.json
  def index
    @detailsales = Detailsale.all
  end

  # GET /detailsales/1
  # GET /detailsales/1.json
  def show
  end

  # GET /detailsales/new
  def new
    @detailsale = Detailsale.new
  end

  # GET /detailsales/1/edit
  def edit
  end

  # POST /detailsales
  # POST /detailsales.json
  def create
    @detailsale = Detailsale.new(detailsale_params)

    respond_to do |format|
      if @detailsale.save
        format.html { redirect_to @detailsale, notice: 'Detailsale was successfully created.' }
        format.json { render :show, status: :created, location: @detailsale }
      else
        format.html { render :new }
        format.json { render json: @detailsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detailsales/1
  # PATCH/PUT /detailsales/1.json
  def update
    respond_to do |format|
      if @detailsale.update(detailsale_params)
        format.html { redirect_to @detailsale, notice: 'Detailsale was successfully updated.' }
        format.json { render :show, status: :ok, location: @detailsale }
      else
        format.html { render :edit }
        format.json { render json: @detailsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detailsales/1
  # DELETE /detailsales/1.json
  def destroy
    @detailsale.destroy
    respond_to do |format|
      format.html { redirect_to detailsales_url, notice: 'Detailsale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detailsale
      @detailsale = Detailsale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detailsale_params
      params.require(:detailsale).permit(:book_id, :cantidad, :sale_id)
    end
end
