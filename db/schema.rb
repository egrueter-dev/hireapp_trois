
ActiveRecord::Schema.define(version: 20150523221134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.string  "name",                        null: false
    t.string  "email",                       null: false
    t.string  "phone",                       null: false
    t.boolean "job_alerts?", default: false
    t.integer "job_id"
  end

  create_table "betausers", force: :cascade do |t|
    t.string "email", null: false
    t.string "name",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title",                          null: false
    t.string   "employment_type",                null: false
    t.string   "industry",                       null: false
    t.string   "location",                       null: false
    t.string   "salary",                         null: false
    t.text     "description"
    t.integer  "posts"
    t.integer  "inquries"
    t.integer  "views"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "open",            default: true
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
