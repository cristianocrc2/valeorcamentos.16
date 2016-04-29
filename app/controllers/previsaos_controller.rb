class PrevisaosController < ApplicationController
  before_action :set_previsao, only: [:show, :edit, :update, :destroy]

  # GET /previsaos
  # GET /previsaos.json
  def index
    @previsaos = Previsao.all
  end

  # GET /previsaos/1
  # GET /previsaos/1.json
  def show
  end

  # GET /previsaos/new
  def new
    @previsao = Previsao.new
  end

  # GET /previsaos/1/edit
  def edit
  end

  # POST /previsaos
  # POST /previsaos.json
  def create
    @previsao = Previsao.new(previsao_params)

    respond_to do |format|
      if @previsao.save
        format.html { redirect_to @previsao, notice: 'Previsao was successfully created.' }
        format.json { render :show, status: :created, location: @previsao }
      else
        format.html { render :new }
        format.json { render json: @previsao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /previsaos/1
  # PATCH/PUT /previsaos/1.json
  def update
    respond_to do |format|
      if @previsao.update(previsao_params)
        format.html { redirect_to @previsao, notice: 'Previsao was successfully updated.' }
        format.json { render :show, status: :ok, location: @previsao }
      else
        format.html { render :edit }
        format.json { render json: @previsao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previsaos/1
  # DELETE /previsaos/1.json
  def destroy
    @previsao.destroy
    respond_to do |format|
      format.html { redirect_to previsaos_url, notice: 'Previsao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_previsao
      @previsao = Previsao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def previsao_params
      params.require(:previsao).permit(:previsao, :ativo, :frequencia_id)
    end
end
