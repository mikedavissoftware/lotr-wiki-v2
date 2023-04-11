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

ActiveRecord::Schema[7.0].define(version: 2023_04_11_021646) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "wikipedia_url"
    t.integer "movie_character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_character_id"], name: "index_actors_on_movie_character_id"
  end

  create_table "appearance_extendeds", force: :cascade do |t|
    t.integer "minute"
    t.integer "second"
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_appearance_extendeds_on_movie_id"
  end

  create_table "appearance_theatricals", force: :cascade do |t|
    t.integer "minute"
    t.integer "second"
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_appearance_theatricals_on_movie_id"
  end

  create_table "births", force: :cascade do |t|
    t.integer "year"
    t.integer "era_id", null: false
    t.integer "movie_character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["era_id"], name: "index_births_on_era_id"
    t.index ["movie_character_id"], name: "index_births_on_movie_character_id"
  end

  create_table "cultures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deaths", force: :cascade do |t|
    t.integer "age"
    t.integer "year"
    t.integer "era_id", null: false
    t.integer "movie_character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["era_id"], name: "index_deaths_on_era_id"
    t.index ["movie_character_id"], name: "index_deaths_on_movie_character_id"
  end

  create_table "eras", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_characters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "one_wiki_url"
    t.string "tolkien_wiki_url"
    t.string "pronunciation"
    t.integer "gender_id", null: false
    t.string "height"
    t.integer "culture_id", null: false
    t.string "spouse"
    t.string "mother"
    t.string "father"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["culture_id"], name: "index_movie_characters_on_culture_id"
    t.index ["gender_id"], name: "index_movie_characters_on_gender_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "release_year"
    t.integer "lengt_theatrical"
    t.integer "length_extended"
    t.string "image_url"
    t.text "description"
    t.string "wikipedia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nicknames", force: :cascade do |t|
    t.string "name"
    t.integer "movie_character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_character_id"], name: "index_nicknames_on_movie_character_id"
  end

  create_table "pronouns", force: :cascade do |t|
    t.string "name"
    t.integer "gender_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_pronouns_on_gender_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string "name"
    t.integer "movie_character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_character_id"], name: "index_titles_on_movie_character_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "image_url"
    t.integer "movie_character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_character_id"], name: "index_weapons_on_movie_character_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "actors", "movie_characters"
  add_foreign_key "appearance_extendeds", "movies"
  add_foreign_key "appearance_theatricals", "movies"
  add_foreign_key "births", "eras"
  add_foreign_key "births", "movie_characters"
  add_foreign_key "deaths", "eras"
  add_foreign_key "deaths", "movie_characters"
  add_foreign_key "movie_characters", "cultures"
  add_foreign_key "movie_characters", "genders"
  add_foreign_key "nicknames", "movie_characters"
  add_foreign_key "pronouns", "genders"
  add_foreign_key "titles", "movie_characters"
  add_foreign_key "weapons", "movie_characters"
end
