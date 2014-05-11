class TakamacchosController < ApplicationController
  before_action :set_takamaccho, only: [:show, :edit, :update, :destroy]

  # GET /takamacchos
  # GET /takamacchos.json
  def index
    @takamacchos = Takamaccho.all
  end

  # GET /takamacchos/1
  # GET /takamacchos/1.json
  def show
  end

  # GET /takamacchos/new
  def new
    @takamaccho = Takamaccho.new
  end

  # GET /takamacchos/1/edit
  def edit
  end

  # POST /takamacchos
  # POST /takamacchos.json
  def create
    @takamaccho = Takamaccho.new(takamaccho_params)

    respond_to do |format|
      if @takamaccho.save
        format.html { redirect_to @takamaccho, notice: 'Takamaccho was successfully created.' }
        format.json { render action: 'show', status: :created, location: @takamaccho }
      else
        format.html { render action: 'new' }
        format.json { render json: @takamaccho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /takamacchos/1
  # PATCH/PUT /takamacchos/1.json
  def update
    respond_to do |format|
      if @takamaccho.update(takamaccho_params)
        format.html { redirect_to @takamaccho, notice: 'Takamaccho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @takamaccho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takamacchos/1
  # DELETE /takamacchos/1.json
  def destroy
    @takamaccho.destroy
    respond_to do |format|
      format.html { redirect_to takamacchos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_takamaccho
      @takamaccho = Takamaccho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def takamaccho_params
      params[:takamaccho]
    end
end
