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

ActiveRecord::Schema.define(version: 20160927155828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adj_forms", force: :cascade do |t|
    t.string   "adj_type",    null: false
    t.integer  "new_word_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["new_word_id"], name: "index_adj_forms_on_new_word_id", using: :btree
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.string   "sentences",       null: false
    t.string   "kanji_version"
    t.string   "meaning",         null: false
    t.text     "note"
    t.string   "examplable_type"
    t.integer  "examplable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["examplable_type", "examplable_id"], name: "index_examples_on_examplable_type_and_examplable_id", using: :btree
  end

  create_table "grammars", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "explanation", null: false
    t.text     "note"
    t.integer  "lesson_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["lesson_id"], name: "index_grammars_on_lesson_id", using: :btree
  end

  create_table "kanji_radicals", force: :cascade do |t|
    t.integer  "radical_id"
    t.integer  "surbodinate_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "kanjis", force: :cascade do |t|
    t.string   "kanji",                        null: false
    t.string   "meaning",                      null: false
    t.string   "onyomi"
    t.string   "kunyomi"
    t.integer  "stroke_count",                 null: false
    t.string   "hint"
    t.string   "image"
    t.boolean  "radical",      default: false
    t.text     "note"
    t.integer  "lesson_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["lesson_id"], name: "index_kanjis_on_lesson_id", using: :btree
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "book"
    t.integer  "lesson"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "grammars_count",  default: 0, null: false
    t.integer  "kanjis_count",    default: 0, null: false
    t.integer  "new_words_count", default: 0, null: false
  end

  create_table "new_words", force: :cascade do |t|
    t.string   "word",                                  null: false
    t.string   "kanji_version"
    t.string   "meaning",                               null: false
    t.text     "note"
    t.string   "word_type",     default: "GenericWord", null: false
    t.integer  "lesson_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["lesson_id"], name: "index_new_words_on_lesson_id", using: :btree
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
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  create_table "verb_forms", force: :cascade do |t|
    t.integer  "verb_type",       null: false
    t.string   "dictionary_form"
    t.string   "te_form"
    t.string   "ta_form"
    t.string   "nai_form"
    t.integer  "new_word_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["new_word_id"], name: "index_verb_forms_on_new_word_id", using: :btree
  end

  add_foreign_key "grammars", "lessons"
end
