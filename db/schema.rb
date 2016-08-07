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

ActiveRecord::Schema.define(version: 20160807091018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attorney_comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "status"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["document_id"], name: "index_attorney_comments_on_document_id", using: :btree
  end

  create_table "client_comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "status"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["document_id"], name: "index_client_comments_on_document_id", using: :btree
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.text     "attorney_notes"
    t.text     "client_notes"
    t.text     "paralegal_notes"
    t.integer  "status"
    t.date     "date"
    t.integer  "year"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "document_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "caption"
    t.string   "credit"
    t.string   "day"
    t.string   "headline"
    t.string   "hour"
    t.string   "minute"
    t.string   "month"
    t.string   "text"
    t.string   "thumbnail"
    t.string   "url"
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "matter_id"
  end

  create_table "firms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "matter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matter_id"], name: "index_inventories_on_matter_id", using: :btree
  end

  create_table "law_office_comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "status"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["document_id"], name: "index_law_office_comments_on_document_id", using: :btree
  end

  create_table "matters", force: :cascade do |t|
    t.string   "kind"
    t.text     "description"
    t.integer  "year"
    t.string   "cause_number"
    t.string   "court"
    t.string   "judge"
    t.string   "opposing_party"
    t.string   "opposing_counsel"
    t.string   "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "oauth_access_grants", force: :cascade do |t|
    t.integer  "resource_owner_id", null: false
    t.integer  "application_id",    null: false
    t.string   "token",             null: false
    t.integer  "expires_in",        null: false
    t.text     "redirect_uri",      null: false
    t.datetime "created_at",        null: false
    t.datetime "revoked_at"
    t.string   "scopes"
    t.index ["token"], name: "index_oauth_access_grants_on_token", unique: true, using: :btree
  end

  create_table "oauth_access_tokens", force: :cascade do |t|
    t.integer  "resource_owner_id"
    t.integer  "application_id"
    t.string   "token",                               null: false
    t.string   "refresh_token"
    t.integer  "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at",                          null: false
    t.string   "scopes"
    t.string   "previous_refresh_token", default: "", null: false
    t.index ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true, using: :btree
    t.index ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id", using: :btree
    t.index ["token"], name: "index_oauth_access_tokens_on_token", unique: true, using: :btree
  end

  create_table "oauth_applications", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "uid",                       null: false
    t.string   "secret",                    null: false
    t.text     "redirect_uri",              null: false
    t.string   "scopes",       default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["uid"], name: "index_oauth_applications_on_uid", unique: true, using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.integer  "gender"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "email"
    t.integer  "matter_id"
    t.text     "description"
    t.boolean  "involved_in_suit"
    t.boolean  "family"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "nickname"
    t.string   "relationship"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["matter_id"], name: "index_people_on_matter_id", using: :btree
  end

  create_table "refile_attachments", force: :cascade do |t|
    t.integer  "oid",        null: false
    t.string   "namespace",  null: false
    t.datetime "created_at"
    t.index ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree
    t.index ["oid"], name: "index_refile_attachments_on_oid", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "user_matters", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "matter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role_id"
    t.index ["matter_id"], name: "index_user_matters_on_matter_id", using: :btree
    t.index ["user_id"], name: "index_user_matters_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "maiden_name"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "bar_card"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "last_name"
  end

  add_foreign_key "attorney_comments", "documents"
  add_foreign_key "client_comments", "documents"
  add_foreign_key "inventories", "matters"
  add_foreign_key "law_office_comments", "documents"
  add_foreign_key "oauth_access_grants", "oauth_applications", column: "application_id"
  add_foreign_key "oauth_access_tokens", "oauth_applications", column: "application_id"
  add_foreign_key "people", "matters"
  add_foreign_key "user_matters", "matters"
  add_foreign_key "user_matters", "users"
end
