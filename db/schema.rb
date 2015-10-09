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

ActiveRecord::Schema.define(version: 20151007234720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calleds", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "tipo",          limit: 1
    t.integer  "identificador"
    t.string   "descricao"
    t.date     "data"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "descricao"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "system_id"
  end

  add_index "categories", ["system_id"], name: "index_categories_on_system_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "office_id"
    t.integer  "mantis"
    t.integer  "client_id"
    t.string   "numProcesso"
    t.string   "nomeServidor"
    t.text     "operacao"
    t.boolean  "migrado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "offices", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "identificador"
    t.string   "sipro"
    t.string   "siged"
    t.date     "dataRecebimento"
    t.string   "ocorrencia"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "system_id"
    t.integer  "user_id"
    t.integer  "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "permissions", ["system_id"], name: "index_permissions_on_system_id", using: :btree
  add_index "permissions", ["user_id"], name: "index_permissions_on_user_id", using: :btree

  create_table "releases", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "versao"
    t.date     "dt_implantacao"
    t.text     "descricao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "releases", ["system_id"], name: "index_releases_on_system_id", using: :btree

  create_table "systems", force: :cascade do |t|
    t.string   "nome"
    t.string   "responsavel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
