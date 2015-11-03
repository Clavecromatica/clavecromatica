# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151103184108) do

  create_table "artista", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.date     "fecha_origen"
    t.string   "web"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artistas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.date     "fecha_origen"
    t.string   "web"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canciones", force: true do |t|
    t.string   "nombre"
    t.integer  "duracion"
    t.decimal  "precio"
    t.integer  "disco_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "direccion"
    t.text     "password"
    t.text     "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discograficas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discos", force: true do |t|
    t.string   "nombre"
    t.date     "publicacion"
    t.decimal  "precio"
    t.integer  "artista_id"
    t.integer  "discografica_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discos", ["artista_id"], name: "index_discos_on_artista_id"
  add_index "discos", ["discografica_id"], name: "index_discos_on_discografica_id"

  create_table "generos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ventas", force: true do |t|
    t.date     "fecha"
    t.decimal  "descuento"
    t.integer  "cliente_id"
    t.integer  "disco_id"
    t.integer  "cancion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
