class ArtistasController < ApplicationController
  before_action :set_artista, only: [:show, :edit, :update, :destroy]

  # GET /artistas
  # GET /artistas.json
  def index
    @artistas = Artista.all
  end

  # GET /artistas/1
  # GET /artistas/1.json
  def show
    @discos = @artista.discos.order(:publicacion => :desc)
  end

  # GET /artistas/new
  def new
    @artista = Artista.new
  end

  # GET /artistas/1/edit
  def edit
  end

  # POST /artistas
  # POST /artistas.json
  def create
    @artista = Artista.new(artista_params)

    respond_to do |format|
      if @artista.save
        format.html { redirect_to @artista, notice: 'Artista was successfully created.' }
        format.json { render :show, status: :created, location: @artista }
      else
        format.html { render :new }
        format.json { render json: @artista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artistas/1
  # PATCH/PUT /artistas/1.json
  def update
    respond_to do |format|
      if @artista.update(artista_params)
        format.html { redirect_to @artista, notice: 'Artista was successfully updated.' }
        format.json { render :show, status: :ok, location: @artista }
      else
        format.html { render :edit }
        format.json { render json: @artista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artistas/1
  # DELETE /artistas/1.json
  def destroy
    @artista.destroy
    respond_to do |format|
      format.html { redirect_to artistas_url, notice: 'Artista was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artista
      @artista = Artista.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artista_params
      params.require(:artista).permit(:nombre, :descripcion, :fecha_origen, :web, :imagen)
    end
end
