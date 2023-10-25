# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_14_230909) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "radicados", force: :cascade do |t|
    t.string "uuid"
    t.string "director"
    t.integer "idDirector"
    t.string "nombreGrupo"
    t.string "razonSocial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "celular"
    t.string "correo"
    t.string "direccion"
    t.string "barrio"
    t.string "municipio"
    t.string "localidad"
    t.string "tparticipacion"
    t.string "tparticipacionsas"
    t.string "nespectaculo"
    t.boolean "transmisionSaberes"
    t.boolean "investigaciones"
    t.boolean "contenidos"
    t.boolean "aporteSalvaguardaOtras"
    t.string "cualesSalvaguardia"
    t.string "manifestacion"
    t.string "grupoPoblacional"
    t.string "grupoEtnico"
    t.string "terminosCondiciones"
    t.integer "nmiembros"
    t.integer "nmusicos"
    t.integer "vestuarios"
    t.integer "pagomusicos"
    t.integer "apoyomovilizacion"
    t.integer "otrasInversiones"
    t.string "cualesEjecucionDelEstimulo"
    t.boolean "lecturabando"
    t.boolean "fiestaComparsas"
    t.boolean "fiestaDanzasyCumbias"
    t.boolean "nocheGuacherna"
    t.boolean "SemilleroCarnaval"
    t.boolean "CarnavalNiños"
    t.boolean "BFVia40"
    t.boolean "BFReyMomo"
    t.boolean "GPTradiciónFolclor"
    t.boolean "GPComparsas"
    t.boolean "EncuentroLetanías"
    t.boolean "Joselitocenizas"
    t.boolean "EncuentroComedias"
    t.boolean "FestivalRelacionyEspeciales"
    t.boolean "Carnavalla44"
    t.boolean "CarnavalSurOccidente"
    t.boolean "CarnavalGay"
    t.boolean "Carnavalla84"
    t.boolean "CarnavalSurOriente"
    t.boolean "Disfrazoton"
    t.boolean "OtrosPECarnaval"
    t.string "otrosParticipacionEventos"
    t.boolean "cedula"
    t.boolean "rut"
    t.boolean "certificado"
    t.boolean "certificacionBancaria"
    t.boolean "censo"
    t.boolean "evidencias"
    t.string "observaciones"
  end

end
