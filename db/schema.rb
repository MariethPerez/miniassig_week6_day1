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

ActiveRecord::Schema.define(version: 2019_04_01_225614) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "name_real"
    t.date "fecha_nac"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alquilers", force: :cascade do |t|
    t.date "fecha_alquiler"
    t.date "fecha_devolucion"
    t.integer "cassete_id"
    t.integer "miembro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cassete_id"], name: "index_alquilers_on_cassete_id"
    t.index ["miembro_id"], name: "index_alquilers_on_miembro_id"
  end

  create_table "cassetes", force: :cascade do |t|
    t.string "formato"
    t.integer "pelicula_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pelicula_id"], name: "index_cassetes_on_pelicula_id"
  end

  create_table "miembros", force: :cascade do |t|
    t.string "name"
    t.string "telefono"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "titulo"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repartos", force: :cascade do |t|
    t.integer "actor_id"
    t.integer "pelicula_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_repartos_on_actor_id"
    t.index ["pelicula_id"], name: "index_repartos_on_pelicula_id"
  end

end
