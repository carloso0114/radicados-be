class RadicadosController < ApplicationController
  # before_action :set_radicado, only: [:show, :update, :destroy]

  # GET /radicados
  def index
    @radicados = Radicado.all
    render json: @radicados
  end

  # GET /radicados/1
  def show
    id_director = params[:idDirector]
    radicado = Radicado.find_by(idDirector: id_director)

    if radicado
      render json: radicado
    else
      render json: { error: 'Radicado not found' }, status: :not_found
    end
  end

  def create
    @radicado = Radicado.new(radicado_params)

    if @radicado.save
      render json: @radicado, status: :created
    else
      render json: @radicado.errors, status: :unprocessable_entity
    end
  end

  def update
    id_director = params[:idDirector]
    radicado = Radicado.find_by(idDirector: id_director)
    if radicado.update(radicado_params)
      render json: radicado
    else 
      render json: radicado.errors, status: :unprocessable_entity
    end
  end

  def destroy
    id_director = params[:idDirector]
    radicado = Radicado.find_by(idDirector: params[:idDirector])
    
    if radicado
      radicado.destroy
      render json: { message: 'Radicado was successfully destroyed' }
    else
      render json: { error: 'Radicado not found or could not be destroyed' }, status: :not_found
    end
  end

  private

  def radicado_params
    params.require(:radicado).permit(:director, :idDirector, :nombreGrupo, 
    :razonSocial, :localidad, :transmisionSaberes, :vestuarios, :pagomusicos, 
    :apoyomovilizacion, :otrasInversiones, :tparticipacion, :tparticipacionsas, 
    :celular, :correo, :direccion, :barrio, :municipio, :nespectaculo, 
    :grupoEtnico, :grupoPoblacional, :manifestacion, :terminosCondiciones, :investigaciones, :contenidos, :aporteSalvaguardaOtras, :cualesSalvaguardia,
    :nmiembros, :nmusicos, :cualesEjecucionDelEstimulo, :observaciones, :cedula, :rut, :certificado, 
    :certificacionBancaria, :censo, :evidencias, :lecturabando, :SemilleroCarnaval, 
    :fiestaComparsas, :CarnavalNiños, :fiestaDanzasyCumbias, :BFVia40, 
    :nocheGuacherna, :BFReyMomo, :Joselitocenizas, :CarnavalSurOccidente, 
    :Disfrazoton, :CarnavalSurOriente, :Carnavalla44, :EncuentroLetanías, 
    :GPComparsas, :FestivalRelacionyEspeciales, :Carnavalla84, :EncuentroComedias, 
    :GPTradiciónFolclor, :CarnavalGay, :OtrosPECarnaval, :otrosParticipacionEventos)
  end
end