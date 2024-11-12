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
    :nocheGuacherna, :BFReyMomo, :Joselitocenizas, :EncuentroLetanías, 
    :GPComparsas, :FestivalRelacionyEspeciales, :EncuentroComedias, 
    :GPTradiciónFolclor, :OtrosPECarnaval, :otrosParticipacionEventos,
    :nombreGrupo2, :nombreGrupo3, :nombreGrupo4,
    :tparticipacion2, :tparticipacion3, :tparticipacion4,
    :nespectaculo2, :nespectaculo3, :nespectaculo4,
    :manifestacion2, :manifestacion3, :manifestacion4, 
    :infantil, :jovenes, :adulto, :adulto_mayor, :musicos,
    :infantil2, :jovenes2, :adulto2, :adulto_mayor2, :musicos2,
    :infantil3, :jovenes3, :adulto3, :adulto_mayor3, :musicos3,
    :infantil4, :jovenes4, :adulto4, :adulto_mayor4, :musicos4,
    :BFSoniaOsorio, :ConquistaDelCarnaval, :CoronacionGay, :DesfileCarnavalSurocciente,
    :DesfileCarnavalSuroriente, :DesfileInfantilSurOriente, :DesfileSalvaguardiaYNinos,
    :FarolesTambores, :FestivalRelacionyEspeciales, :GpCarlosFranco, :GuachernaGay,
    :LetaniaCumbion, :funcionario
    )
  end
end