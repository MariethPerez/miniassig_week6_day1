class RepartosController < ApplicationController
  before_action :set_reparto, only: [:show, :edit, :update, :destroy]

  # GET /repartos
  # GET /repartos.json
  def index
    @repartos = Reparto.all
  end

  # GET /repartos/1
  # GET /repartos/1.json
  def show
  end

  # GET /repartos/new
  def new
    @reparto = Reparto.new
  end

  # GET /repartos/1/edit
  def edit
  end

  # POST /repartos
  # POST /repartos.json
  def create
    @reparto = Reparto.new(reparto_params)

    respond_to do |format|
      if @reparto.save
        format.html { redirect_to @reparto, notice: 'Reparto was successfully created.' }
        format.json { render :show, status: :created, location: @reparto }
      else
        format.html { render :new }
        format.json { render json: @reparto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repartos/1
  # PATCH/PUT /repartos/1.json
  def update
    respond_to do |format|
      if @reparto.update(reparto_params)
        format.html { redirect_to @reparto, notice: 'Reparto was successfully updated.' }
        format.json { render :show, status: :ok, location: @reparto }
      else
        format.html { render :edit }
        format.json { render json: @reparto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repartos/1
  # DELETE /repartos/1.json
  def destroy
    @reparto.destroy
    respond_to do |format|
      format.html { redirect_to repartos_url, notice: 'Reparto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reparto
      @reparto = Reparto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reparto_params
      params.require(:reparto).permit(:actor_id, :pelicula_id)
    end
end
