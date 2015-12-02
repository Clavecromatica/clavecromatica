class CancionesController < ApplicationController
  before_action :set_cancion, only: [:show, :edit, :update, :destroy]

  # GET /canciones
  # GET /canciones.json
  def index
    @canciones = Cancion.all
  end

  # GET /canciones/1
  # GET /canciones/1.json
  def show
  end

  # GET /canciones/new
  def new
    @cancion = Cancion.new
    authorize! :create, @cancion
  end

  # GET /canciones/1/edit
  def edit
  end

  # POST /canciones
  # POST /canciones.json
  def create
    @cancion = Cancion.new(cancion_params)

    respond_to do |format|
      authorize! :create, @cancion
      if @cancion.save
        format.html { redirect_to @cancion, notice: 'Cancion was successfully created.' }
        format.json { render :show, status: :created, location: @cancion }
      else
        format.html { render :new }
        format.json { render json: @cancion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canciones/1
  # PATCH/PUT /canciones/1.json
  def update
    respond_to do |format|
      authorize! :create, @artista
      if @cancion.update(cancion_params)
        format.html { redirect_to @cancion, notice: 'Cancion was successfully updated.' }
        format.json { render :show, status: :ok, location: @cancion }
      else
        format.html { render :edit }
        format.json { render json: @cancion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canciones/1
  # DELETE /canciones/1.json
  def destroy
    authorize! :create, @cancion
    @cancion.destroy
    respond_to do |format|
      format.html { redirect_to canciones_url, notice: 'Cancion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancion
      @cancion = Cancion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cancion_params
      params.require(:cancion).permit(:nombre, :duracion, :precio, :disco_id)
    end
end
