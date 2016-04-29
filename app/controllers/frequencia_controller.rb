class FrequenciaController < ApplicationController
  before_action :set_frequencium, only: [:show, :edit, :update, :destroy]

  # GET /frequencia
  # GET /frequencia.json
  def index
    @frequencia = Frequencium.all
  end

  # GET /frequencia/1
  # GET /frequencia/1.json
  def show
  end

  # GET /frequencia/new
  def new
    @frequencium = Frequencium.new
  end

  # GET /frequencia/1/edit
  def edit
  end

  # POST /frequencia
  # POST /frequencia.json
  def create
    @frequencium = Frequencium.new(frequencium_params)

    respond_to do |format|
      if @frequencium.save
        format.html { redirect_to @frequencium, notice: 'Frequencium was successfully created.' }
        format.json { render :show, status: :created, location: @frequencium }
      else
        format.html { render :new }
        format.json { render json: @frequencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequencia/1
  # PATCH/PUT /frequencia/1.json
  def update
    respond_to do |format|
      if @frequencium.update(frequencium_params)
        format.html { redirect_to @frequencium, notice: 'Frequencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @frequencium }
      else
        format.html { render :edit }
        format.json { render json: @frequencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequencia/1
  # DELETE /frequencia/1.json
  def destroy
    @frequencium.destroy
    respond_to do |format|
      format.html { redirect_to frequencia_url, notice: 'Frequencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequencium
      @frequencium = Frequencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frequencium_params
      params.require(:frequencium).permit(:frequencia, :ativo, :subcategoria_id)
    end
end
