class CuposController < ApplicationController
  before_action :set_cupo, only: [:show, :edit, :update, :destroy]

  # GET /cupos
  # GET /cupos.json
  def index
    @cupos = Cupo.all
  end

  # GET /cupos/1
  # GET /cupos/1.json
  def show
  end

  # GET /cupos/new
  def new
    @cupo = Cupo.new
  end

  # GET /cupos/1/edit
  def edit
  end

  # POST /cupos
  # POST /cupos.json
  def create
    @cupo = Cupo.new(cupo_params)

    respond_to do |format|
      if @cupo.save
        format.html { redirect_to @cupo, notice: 'Cupo was successfully created.' }
        format.json { render :show, status: :created, location: @cupo }
      else
        format.html { render :new }
        format.json { render json: @cupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupos/1
  # PATCH/PUT /cupos/1.json
  def update
    respond_to do |format|
      if @cupo.update(cupo_params)
        format.html { redirect_to @cupo, notice: 'Cupo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cupo }
      else
        format.html { render :edit }
        format.json { render json: @cupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupos/1
  # DELETE /cupos/1.json
  def destroy
    @cupo.destroy
    respond_to do |format|
      format.html { redirect_to cupos_url, notice: 'Cupo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupo
      @cupo = Cupo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cupo_params
      params.require(:cupo).permit(:dniPaciente, :nombre, :apellido, :fechaNacimiento, :especialidad, :descripcion)
    end
end
