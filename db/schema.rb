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

ActiveRecord::Schema.define(version: 20151018192548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jogo_perfils", force: :cascade do |t|
    t.integer  "jogo_id"
    t.integer  "perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jogos", force: :cascade do |t|
    t.string   "descricao"
    t.string   "foto"
    t.string   "console"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfils", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.date     "dt_nasc"
    t.string   "endereco"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cidade"
    t.string   "estado"
  end

  create_table "propostajogos", force: :cascade do |t|
    t.integer  "jogo_perfil_id"
    t.integer  "trocajogo_id"
    t.integer  "avaliacao"
    t.date     "dt_troca"
    t.boolean  "finalizado"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "trocajogos", force: :cascade do |t|
    t.integer  "jogo_perfil_id"
    t.integer  "propostajogo_id"
    t.integer  "avaliacao"
    t.date     "dt_troca"
    t.boolean  "finalizado"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
