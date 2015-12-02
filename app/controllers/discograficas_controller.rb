class DiscograficasController < ApplicationController
  before_action :set_discografica, only: [:show, :edit, :update, :destroy]

  # GET /discograficas
  # GET /discograficas.json
  def index
    @discograficas = Discografica.all
  end

  # GET /discograficas/1
  # GET /discograficas/1.json
  def show
  end

  # GET /discograficas/new
  def new
    @discografica = Discografica.new
    authorize! :create, @discografia
  end

  # GET /discograficas/1/edit
  def edit
  end

  # POST /discograficas
  # POST /discograficas.json
  def create
    @discografica = Discografica.new(discografica_params)

    respond_to do |format|
      authorize! :create, @discografia
      if @discografica.save
        format.html { redirect_to @discografica, notice: 'Discografica was successfully created.' }
        format.json { render :show, status: :created, location: @discografica }
      else
        format.html { render :new }
        format.json { render json: @discografica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discograficas/1
  # PATCH/PUT /discograficas/1.json
  def update
    respond_to do |format|
      authorize! :create, @discografia
      if @discografica.update(discografica_params)
        format.html { redirect_to @discografica, notice: 'Discografica was successfully updated.' }
        format.json { render :show, status: :ok, location: @discografica }
      else
        format.html { render :edit }
        format.json { render json: @discografica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discograficas/1
  # DELETE /discograficas/1.json
  def destroy
    authorize! :create, @discografia
    @discografica.destroy
    respond_to do |format|
      format.html { redirect_to discograficas_url, notice: 'Discografica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discografica
      @discografica = Discografica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discografica_params
      params.require(:discografica).permit(:nombre, :descripcion)
    end
end
