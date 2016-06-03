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

ActiveRecord::Schema.define(version: 20160602081947) do

  create_table "actualites", force: :cascade do |t|
    t.string   "titre"
    t.text     "contenu"
    t.integer  "animateur_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
    t.string   "lieu"
    t.string   "siteweb"
    t.date     "date"
  end

  create_table "categories", force: :cascade do |t|
    t.string "nom"
  end

  create_table "codepostals", force: :cascade do |t|
    t.integer  "codepostal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commentaires", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "message"
    t.integer  "contributeur_id"
    t.integer  "projet_id"
  end

  create_table "contributeurs", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pseudo"
    t.string   "nom"
    t.string   "prenom"
    t.integer  "annee_naissance"
    t.string   "commune"
    t.string   "status"
    t.boolean  "charte",                 default: false
    t.string   "type"
    t.string   "sexe"
    t.string   "telephone"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.boolean  "newsletter",             default: false
    t.string   "codepostal"
  end

  add_index "contributeurs", ["confirmation_token"], name: "index_contributeurs_on_confirmation_token", unique: true
  add_index "contributeurs", ["email"], name: "index_contributeurs_on_email", unique: true
  add_index "contributeurs", ["reset_password_token"], name: "index_contributeurs_on_reset_password_token", unique: true

  create_table "jadheres", force: :cascade do |t|
    t.integer  "point_de_vue_id"
    t.integer  "contributeur_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "jadheres", ["contributeur_id"], name: "index_jadheres_on_contributeur_id"
  add_index "jadheres", ["point_de_vue_id"], name: "index_jadheres_on_point_de_vue_id"

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "projet_id"
    t.integer  "contributeur_id"
  end

  add_index "likes", ["contributeur_id"], name: "index_likes_on_contributeur_id"
  add_index "likes", ["projet_id"], name: "index_likes_on_projet_id"

  create_table "point_de_vues", force: :cascade do |t|
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "titre"
    t.text     "description"
    t.string   "localisation"
    t.string   "image"
    t.integer  "contributeur_id"
    t.integer  "codepostal_id"
    t.integer  "ville_id"
    t.boolean  "positif",         default: true
    t.boolean  "validation",      default: false
  end

  add_index "point_de_vues", ["codepostal_id"], name: "index_point_de_vues_on_codepostal_id"
  add_index "point_de_vues", ["ville_id"], name: "index_point_de_vues_on_ville_id"

  create_table "projets", force: :cascade do |t|
    t.string   "titre"
    t.string   "codepostal"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "contributeur_id"
    t.integer  "categorie_id"
    t.string   "statut"
    t.text     "besoin"
    t.string   "localisation"
    t.date     "demarrage"
    t.string   "urlsite"
    t.string   "image"
    t.integer  "codepostal_id"
    t.integer  "ville_id"
  end

  add_index "projets", ["categorie_id"], name: "index_projets_on_categorie_id"
  add_index "projets", ["codepostal_id"], name: "index_projets_on_codepostal_id"
  add_index "projets", ["contributeur_id"], name: "index_projets_on_contributeur_id"
  add_index "projets", ["ville_id"], name: "index_projets_on_ville_id"

  create_table "scot_messages", force: :cascade do |t|
    t.text     "contenu"
    t.integer  "contributeur_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "scot_messages", ["contributeur_id"], name: "index_scot_messages_on_contributeur_id"

  create_table "sondages", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "profession"
    t.string   "equipement"
    t.string   "usage_fixe"
    t.string   "usage_portable"
    t.string   "usage_tablette"
    t.string   "usage_smartphone"
    t.string   "service"
    t.text     "commentaire_service"
    t.string   "competences"
    t.string   "formation"
    t.string   "prestataire"
    t.text     "commentaire_formation"
    t.integer  "contributeur_id"
    t.string   "autre_usage_fixe"
    t.string   "autre_usage_portable"
    t.string   "autre_usage_tablette"
    t.string   "autre_usage_smartphone"
  end

  create_table "villes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "codepostal_id"
  end

  add_index "villes", ["codepostal_id"], name: "index_villes_on_codepostal_id"

end
