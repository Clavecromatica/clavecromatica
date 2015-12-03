class DiscosController < ApplicationController
  before_action :set_disco, only: [:show, :edit, :update, :destroy, :add_item_to_shipping_cart]

  # GET /discos
  # GET /discos.json
  def index
    @generos = Genero.all
    if params[:genero_id].nil?
      @genero = Genero.first
    else
      @genero = Genero.find_by(id: params[:genero_id])
    end
    @discos = @genero.discos.order(:nombre => :asc)
    
  end

  # GET /discos/1
  # GET /discos/1.json
  def show
    @canciones = @disco.canciones
    @duracion = @canciones.sum(:duracion)
  end

  # GET /discos/new
  def new
    @disco = Disco.new
    authorize! :create, @disco
  end

  # GET /discos/1/edit
  def edit
  end

  # POST /discos
  # POST /discos.json
  def create
    @disco = Disco.new(disco_params)

    respond_to do |format|
      authorize! :create, @disco
      if @disco.save
        format.html { redirect_to @disco, notice: 'Disco was successfully created.' }
        format.json { render :show, status: :created, location: @disco }
      else
        format.html { render :new }
        format.json { render json: @disco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discos/1
  # PATCH/PUT /discos/1.json
  def update
    respond_to do |format|
      authorize! :create, @disco
      if @disco.update(disco_params)
        format.html { redirect_to @disco, notice: 'Disco was successfully updated.' }
        format.json { render :show, status: :ok, location: @disco }
      else
        format.html { render :edit }
        format.json { render json: @disco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discos/1
  # DELETE /discos/1.json
  def destroy
    authorize! :create, @disco
    @disco.destroy
    respond_to do |format|
      format.html { redirect_to discos_url, notice: 'Disco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_item_to_shipping_cart
    if user_signed_in?
      if cookies[:carrito].nil?
        cookies[:carrito] = [@disco.id].to_json 
        redirect_to @disco
      else
        @item = JSON.parse(cookies[:carrito])
        @item << @disco.id
        cookies[:carrito] = @item.to_json
        redirect_to @disco
      end
    end
  end
  
  def comprar
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disco
      @disco = Disco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disco_params
      params.require(:disco).permit(:nombre, :publicacion, :precio, :artista_id, :discografica_id, :portada_delantera, :portada_trasera, :genero_id)
    end
end
