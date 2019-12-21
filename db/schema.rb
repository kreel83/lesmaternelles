# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_21_221731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activites", force: :cascade do |t|
    t.string "nom"
    t.string "photo"
    t.bigint "categorie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["categorie_id"], name: "index_activites_on_categorie_id"
    t.index ["user_id"], name: "index_activites_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "nom"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enfants", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "groupe"
    t.string "photo"
    t.string "emails"
    t.string "ddn"
    t.string "sexe"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_enfants_on_user_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "nom"
    t.string "url"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notations", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rejetactivites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "activite_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activite_id"], name: "index_rejetactivites_on_activite_id"
    t.index ["user_id"], name: "index_rejetactivites_on_user_id"
  end

  create_table "resultats", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "enfant_id", null: false
    t.bigint "activite_id", null: false
    t.bigint "notation_id", null: false
    t.datetime "date"
    t.bigint "video_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activite_id"], name: "index_resultats_on_activite_id"
    t.index ["enfant_id"], name: "index_resultats_on_enfant_id"
    t.index ["notation_id"], name: "index_resultats_on_notation_id"
    t.index ["user_id"], name: "index_resultats_on_user_id"
    t.index ["video_id"], name: "index_resultats_on_video_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nom"
    t.string "prenom"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "nom"
    t.string "url"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "activites", "categories", column: "categorie_id"
  add_foreign_key "enfants", "users"
  add_foreign_key "rejetactivites", "activites"
  add_foreign_key "rejetactivites", "users"
  add_foreign_key "resultats", "activites"
  add_foreign_key "resultats", "enfants"
  add_foreign_key "resultats", "notations"
  add_foreign_key "resultats", "users"
  add_foreign_key "resultats", "videos"
end
