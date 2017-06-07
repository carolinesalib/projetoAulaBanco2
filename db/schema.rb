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

ActiveRecord::Schema.define(version: 20170601231444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bairros", force: :cascade do |t|
    t.string   "nome"
    t.integer  "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_bairros_on_cidade_id", using: :btree
  end

  create_table "cidades", force: :cascade do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id", using: :btree
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "logradouro"
    t.string   "cep"
    t.integer  "bairro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bairro_id"], name: "index_enderecos_on_bairro_id", using: :btree
  end

  create_table "estados", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.integer  "pai_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pai_id"], name: "index_estados_on_pai_id", using: :btree
  end

  create_table "localizacaos", force: :cascade do |t|
    t.string   "geolocalizacao"
    t.integer  "endereco_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["endereco_id"], name: "index_localizacaos_on_endereco_id", using: :btree
  end

  create_table "pais", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.integer  "situacao"
    t.string   "raca"
    t.string   "porte"
    t.string   "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.integer  "localizacao_id"
    t.integer  "usuario_id"
    t.integer  "pet_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["localizacao_id"], name: "index_posts_on_localizacao_id", using: :btree
    t.index ["pet_id"], name: "index_posts_on_pet_id", using: :btree
    t.index ["usuario_id"], name: "index_posts_on_usuario_id", using: :btree
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "email"
    t.date     "data_nascimento"
    t.string   "login"
    t.string   "senha"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "bairros", "cidades"
  add_foreign_key "cidades", "estados"
  add_foreign_key "enderecos", "bairros"
  add_foreign_key "estados", "pais"
  add_foreign_key "localizacaos", "enderecos"
  add_foreign_key "posts", "localizacaos"
  add_foreign_key "posts", "pets"
  add_foreign_key "posts", "usuarios"
end
