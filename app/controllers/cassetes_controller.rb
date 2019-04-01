class CassetesController < ApplicationController
  before_action :set_cassete, only: [:show, :edit, :update, :destroy]

  # GET /cassetes
  # GET /cassetes.json
  def index
    @cassetes = Cassete.all
  end

  # GET /cassetes/1
  # GET /cassetes/1.json
  def show
  end

  # GET /cassetes/new
  def new
    @cassete = Cassete.new
  end

  # GET /cassetes/1/edit
  def edit
  end

  # POST /cassetes
  # POST /cassetes.json
  def create
    @cassete = Cassete.new(cassete_params)

    respond_to do |format|
      if @cassete.save
        format.html { redirect_to @cassete, notice: 'Cassete was successfully created.' }
        format.json { render :show, status: :created, location: @cassete }
      else
        format.html { render :new }
        format.json { render json: @cassete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cassetes/1
  # PATCH/PUT /cassetes/1.json
  def update
    respond_to do |format|
      if @cassete.update(cassete_params)
        format.html { redirect_to @cassete, notice: 'Cassete was successfully updated.' }
        format.json { render :show, status: :ok, location: @cassete }
      else
        format.html { render :edit }
        format.json { render json: @cassete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cassetes/1
  # DELETE /cassetes/1.json
  def destroy
    @cassete.destroy
    respond_to do |format|
      format.html { redirect_to cassetes_url, notice: 'Cassete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cassete
      @cassete = Cassete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cassete_params
      params.require(:cassete).permit(:formato, :pelicula_id)
    end
end
