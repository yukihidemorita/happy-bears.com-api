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

ActiveRecord::Schema[7.0].define(version: 2022_07_16_162212) do
  create_table "abm_codes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code"
    t.string "uri"
    t.bigint "staff_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_abm_code_on__staff_id"
  end

  create_table "accompanying_staff_assigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.bigint "staff_id"
    t.bigint "accompanying_staff"
    t.string "status"
    t.text "staff_intro_note"
    t.text "staff_condition_note"
    t.boolean "has_strong_point"
    t.boolean "has_week_point"
    t.string "matching_way"
    t.text "result_remarks"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_accompanying_staff_assigns_on_sservice_assign_id"
    t.index ["staff_id"], name: "index_accompanying_staff_assigns_on_staff_id"
  end

  create_table "account_titles", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "journalizing_type"
    t.string "financial_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "active_storage_attachments", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "aircon_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "alliance_aggregate_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "alliance_aggregate_id"
    t.integer "alliance_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "alliance_aggregates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "alliance_billing_dates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id"
    t.integer "lock_from"
    t.integer "lock_to"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_billing_dates_on_alliance_id"
  end

  create_table "alliance_categories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.text "category_id", null: false
    t.bigint "alliance_id", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
  end

  create_table "alliance_collections", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.string "original_type", default: "normal", null: false
    t.bigint "project_id"
    t.string "term_kind"
    t.string "alliance_collecting_type", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_collections_on_alliance_id"
    t.index ["project_id"], name: "index_alliance_collections_on_project_id"
  end

  create_table "alliance_discount_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.bigint "menu_id"
    t.string "discount_type", default: "rate", null: false
    t.integer "price", null: false
    t.boolean "chargeable", default: false, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_discount_menus_on_alliance_id"
    t.index ["menu_id"], name: "index_alliance_discount_menus_on_menu_id"
  end

  create_table "alliance_discounts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.bigint "project_id"
    t.string "term_kind"
    t.string "kind", default: "normal", null: false
    t.string "discount_type", default: "rate"
    t.integer "price"
    t.boolean "chargeable", default: false, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_discounts_on_alliance_id"
    t.index ["project_id"], name: "index_alliance_discounts_on_project_id"
  end

  create_table "alliance_fee_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.bigint "menu_id", null: false
    t.string "fee_type", null: false
    t.bigint "fee", default: 0, null: false
    t.string "frequency_type", default: "continue", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_fee_menus_on_alliance_id"
    t.index ["menu_id"], name: "index_alliance_fee_menus_on_menu_id"
  end

  create_table "alliance_fees", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.bigint "project_id"
    t.string "term_kind"
    t.string "fee_type", null: false
    t.bigint "fee", default: 0, null: false
    t.string "frequency_type", default: "continue", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_fees_on_alliance_id"
    t.index ["project_id"], name: "index_alliance_fees_on_project_id"
  end

  create_table "alliance_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.string "file", null: false
    t.string "original_file_name", null: false
    t.string "link_uri"
    t.string "link_target"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_images_on_alliance_id"
  end

  create_table "alliance_mybears", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "password_salt"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "ip_address", limit: 2000
    t.string "commission_information_address"
    t.string "achievement_report_address"
    t.string "site_name"
    t.string "file"
    t.string "original_file_name"
    t.string "link_uri"
    t.string "link_target"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id", "deleted_at"], name: "alliance_mybears_on_alliance_id", unique: true
    t.index ["reset_password_token"], name: "alliance_mybears_on_reset_password_token", unique: true
  end

  create_table "alliance_project_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_project_id"
    t.bigint "menu_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_project_id"], name: "index_alliance_project_menus_on_alliance_project_id"
    t.index ["menu_id"], name: "index_alliance_project_menus_on_menu_id"
  end

  create_table "alliance_projects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id"
    t.bigint "project_id"
    t.boolean "except_baby"
    t.boolean "except_admission_price"
    t.boolean "except_yearly_price"
    t.boolean "except_yearly2_price"
    t.string "kind"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_projects_on_alliance_id"
    t.index ["project_id"], name: "index_alliance_projects_on_project_id"
  end

  create_table "alliance_report_formats", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id", null: false
    t.boolean "service_alliance_code", default: true
    t.boolean "customer_alliance_code", default: true
    t.boolean "customer_id", default: true
    t.boolean "customer_name", default: true
    t.boolean "customer_name_kana", default: true
    t.boolean "postal_code", default: true
    t.boolean "pref_name", default: true
    t.boolean "city_name", default: true
    t.boolean "address", default: true
    t.boolean "building", default: true
    t.boolean "room_no", default: true
    t.boolean "phone", default: true
    t.boolean "project_name", default: true
    t.boolean "summary", default: true
    t.boolean "sales_date", default: true
    t.boolean "work_from", default: true
    t.boolean "work_to", default: true
    t.boolean "service_counts", default: true
    t.boolean "transport_expense", default: true
    t.boolean "sales_price", default: true
    t.boolean "total_sales_price", default: true
    t.boolean "direct_income_price", default: true
    t.boolean "alliance_collection_price", default: true
    t.boolean "alliance_ticket_price", default: true
    t.boolean "alliance_ticket", default: true
    t.boolean "fee_basis_price", default: true
    t.boolean "fee", default: true
    t.boolean "fee_frequency_type", default: true
    t.boolean "fee_type", default: true
    t.boolean "memo", default: true
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_report_formats_on_alliance_id"
  end

  create_table "alliance_users", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id"
    t.string "code"
    t.string "name"
    t.string "memo"
    t.string "file", null: false
    t.string "original_file_name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_alliance_user_on_alliance_id"
  end

  create_table "alliances", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "status", null: false
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone1", limit: 11
    t.string "phone1_memo"
    t.string "phone2", limit: 11
    t.string "phone2_memo"
    t.string "phone3", limit: 11
    t.string "phone3_memo", limit: 100
    t.string "mail_pc", limit: 100
    t.string "mail_mobile", limit: 100
    t.string "fax", limit: 11
    t.bigint "user_id"
    t.bigint "branch_id"
    t.bigint "unit_id"
    t.bigint "smbc_transfer_account_id"
    t.string "bank_code", limit: 4
    t.string "bank_branch_code", limit: 3
    t.integer "bank_account_type"
    t.string "bank_account_number", limit: 7
    t.string "bank_account_name", limit: 100
    t.boolean "original_contracted", default: false, null: false
    t.boolean "oem_contracted", default: false, null: false
    t.boolean "introduction_contracted", default: false, null: false
    t.boolean "preferential_treatment", default: false, null: false
    t.string "introduction_collection_unit"
    t.string "original_collection_unit"
    t.string "fee_type_unit"
    t.boolean "discount_needed"
    t.string "discount_type_unit"
    t.boolean "discount_menu_setable"
    t.boolean "discount_duplication"
    t.boolean "fee_needed"
    t.boolean "fee_menu_setable"
    t.string "fee_sum_unit"
    t.string "fee_calc_order_type"
    t.boolean "transportation_expense_included"
    t.string "tax_included_type"
    t.string "rate_fraction_type"
    t.boolean "fee_option_included"
    t.integer "fee_option_rate_house"
    t.integer "fee_option_rate_maid"
    t.boolean "fee_yearly_included"
    t.integer "fee_yearly_rate"
    t.integer "monthly_billing_amount"
    t.integer "monthly_limit_count"
    t.boolean "report_needed"
    t.boolean "able_outbound", default: true, null: false
    t.boolean "able_mybears", default: true, null: false
    t.boolean "able_mailmagazine", default: true, null: false
    t.boolean "able_directmail", default: true, null: false
    t.boolean "able_sms", default: true, null: false
    t.integer "cutoff_day"
    t.string "payment_month"
    t.integer "payment_day"
    t.string "receipt_month"
    t.integer "receipt_day"
    t.boolean "achievement_report_needed"
    t.bigint "monthly_billing_count"
    t.string "release_date"
    t.text "memo"
    t.text "bears_workflow"
    t.text "staff_workflow"
    t.boolean "customercode_needed"
    t.boolean "servicecode_needed"
    t.boolean "house_assign_limited"
    t.boolean "house_parking_expense_prohibited"
    t.boolean "service_tax_included", default: false, null: false
    t.boolean "as_proper_price", default: false, null: false
    t.boolean "absolute_arrangement", default: false, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["branch_id"], name: "index_alliances_on_branch_id"
    t.index ["mail_mobile"], name: "index_alliances_on_mail_mobile"
    t.index ["mail_pc"], name: "index_alliances_on_mail_pc"
    t.index ["unit_id"], name: "index_alliances_on_unit_id"
    t.index ["user_id"], name: "index_alliances_on_user_id"
  end

  create_table "answer_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "option_text"
    t.integer "questionnaire_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["questionnaire_id"], name: "index_answer_option_on_questionnaire_id"
  end

  create_table "approval_histories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "pay_salary_id"
    t.bigint "staff_id"
    t.integer "partner_id"
    t.datetime "approval_at", precision: nil
    t.text "approval_sign", null: false
    t.text "bank_str", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["partner_id"], name: "index_approval_histories_on_partner_id"
    t.index ["pay_salary_id"], name: "ndex_approval_histories_on_pay_salary_id"
  end

  create_table "assignable_schedule_area_postcodes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code", limit: 3
    t.bigint "assignable_schedule_area_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["assignable_schedule_area_id"], name: "index_assignable_schedule_areas_and_postcodes"
  end

  create_table "assignable_schedule_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["unit_id"], name: "index_assignable_schedule_areas_on_unit_id"
    t.index ["user_id"], name: "index_assignable_schedule_areas_on_user_id"
  end

  create_table "assignable_schedule_defaults", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "assignable_schedule_area_id"
    t.integer "weekday_code"
    t.string "kind"
    t.integer "assignable_num"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["assignable_schedule_area_id", "weekday_code"], name: "index_assignable_defaults_on_weekday_code"
  end

  create_table "assignable_schedule_inputs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "assignable_schedule_area_id"
    t.date "assignable_date"
    t.string "kind"
    t.integer "assignable_num"
    t.integer "assigned_num"
    t.integer "remain_num"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["assignable_schedule_area_id", "assignable_date"], name: "index_assignable_schedule_inputs_on_weekday_assignable_date"
  end

  create_table "assignable_schedules", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "assignable_schedule_area_id"
    t.datetime "assignable_from", precision: nil
    t.integer "assignable_num"
    t.integer "assigned_num"
    t.integer "remain_num"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["assignable_schedule_area_id"], name: "index_assignable_schedules_on_assignable_schedule_area_id"
  end

  create_table "bank_branches", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "bank_code", limit: 4, null: false
    t.string "code", limit: 3, null: false
    t.string "name", limit: 50, null: false
    t.string "name_kana", limit: 100
    t.string "name_short", limit: 50, null: false
    t.string "name_export", limit: 100
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["code", "bank_code", "deleted_at"], name: "index_bank_branches_on_bank_code", unique: true
  end

  create_table "banks", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "name_short", limit: 100, null: false
    t.string "name_export", limit: 100
    t.string "code", limit: 4, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["code"], name: "index_banks_on_code", unique: true
  end

  create_table "bill_alliance_performance_reports", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id"
    t.bigint "monthly_alliance_lock_id"
    t.date "service_month"
    t.string "client_code"
    t.integer "bill_price"
    t.bigint "bill_transfer_id"
    t.integer "fee_sales_price"
    t.integer "fee_introduction_price"
    t.integer "after_lock_bill_price"
    t.integer "after_lock_fee_sales_price"
    t.integer "after_lock_fee_introduction_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_bill_alliance_performance_reports_on_alliance_id"
  end

  create_table "bill_alliances", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "service_month"
    t.bigint "alliance_id"
    t.string "client_code"
    t.integer "bill_price"
    t.bigint "bill_transfer_id"
    t.integer "fee_sales_price"
    t.integer "fee_introduction_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_bill_alliances_on_alliance_id"
    t.index ["service_month"], name: "index_bill_alliances_on_service_month"
  end

  create_table "bill_creditcards", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "bill_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.integer "smbc_seq"
    t.string "charge_status"
    t.datetime "charge_at", precision: nil
    t.text "charge_ng_reason"
    t.integer "price"
    t.date "clear_at"
    t.bigint "bill_outstanding_id"
    t.bigint "bill_refund_id"
    t.boolean "outstanding_included", default: false, null: false
    t.boolean "all_outstanding", default: false, null: false
    t.boolean "correction_included", default: false, null: false
    t.boolean "correction_excluded", default: false, null: false
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_outstanding_id"], name: "index_bill_creditcards_on_bill_outstanding_id"
    t.index ["bill_refund_id"], name: "index_bill_creditcards_on_bill_refund_id"
    t.index ["clear_at"], name: "index_bill_creditcards_on_bill_clear_at"
    t.index ["customer_id", "smbc_seq", "bill_month"], name: "index_bill_creditcards_on_customer_id", unique: true
  end

  create_table "bill_forcast_rows", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "bill_forcast_id"
    t.date "bill_month"
    t.date "service_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.bigint "partner_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "customer_workplace_optional_contract_id"
    t.bigint "product_order_id"
    t.bigint "client_sale_id"
    t.bigint "partner_menu_order_id"
    t.bigint "partner_admission_fee_id"
    t.bigint "partner_loyalty_fee_id"
    t.bigint "friendlypoint_id"
    t.bigint "ticket_instance_id"
    t.string "kind"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "tup"
    t.boolean "contract_start"
    t.boolean "contract_end"
    t.text "summary"
    t.bigint "pay_method_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "smbc_transfer_account_id"
    t.bigint "bill_information_id"
    t.bigint "receipt_information_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.bigint "np_summary_transaction_id"
    t.bigint "np_credit_transaction_id"
    t.string "pref_code"
    t.string "city_code"
    t.datetime "sales_date", precision: nil
    t.integer "sales_price"
    t.integer "bill_price"
    t.integer "bill_alliance_price"
    t.integer "service_price"
    t.integer "transport_expense"
    t.integer "extend_service_price"
    t.integer "yearly_price"
    t.integer "advance_cash"
    t.integer "bank_collection_price"
    t.integer "alliance_collection_price"
    t.integer "prepay_price"
    t.integer "prepay_ticket_price"
    t.integer "alliance_ticket_price"
    t.integer "friendlypoint_price"
    t.integer "np_price"
    t.integer "deposit_price"
    t.integer "cancel_friendlypoint_price"
    t.string "customer_alliance_code"
    t.string "service_alliance_code"
    t.string "customer_name"
    t.string "customer_name_kana"
    t.string "postal_code"
    t.string "pref_name"
    t.string "city_name"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.string "fee_account_type"
    t.string "fee_type"
    t.string "tax_included_type"
    t.string "fee_calc_order_type"
    t.string "rate_fraction_type"
    t.string "fee_frequency_type"
    t.integer "fee_number"
    t.integer "fee_basis_price"
    t.integer "fee"
    t.string "alliance_tickets", limit: 1024
    t.boolean "correction"
    t.bigint "correction_bill_row_id"
    t.date "correction_cleared_at"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_forcast_id"], name: "index_bill_forcast_rows_on_bill_forcast_id"
    t.index ["bill_information_id"], name: "index_bill_forcast_rows_on_bill_information_id"
    t.index ["client_code"], name: "index_bill_forcast_rows_on_client_code"
    t.index ["client_id"], name: "index_bill_forcast_rows_on_client_id"
    t.index ["client_sale_id"], name: "index_bill_forcast_rows_on_client_sale_id"
    t.index ["customer_id"], name: "index_bill_forcast_rows_on_customer_id"
    t.index ["customer_pay_method_creditcard_id"], name: "index_bill_forcast_rows_on_customer_pay_method_creditcard_id"
    t.index ["customer_pay_method_meiji_id"], name: "index_bill_forcast_rows_on_customer_pay_method_meiji_id"
    t.index ["customer_pay_method_smbc_id"], name: "index_bill_forcast_rows_on_customer_pay_method_smbc_id"
    t.index ["customer_pay_method_transfer_id"], name: "index_bill_forcast_rows_on_customer_pay_method_transfer_id"
    t.index ["product_order_id"], name: "index_bill_forcast_rows_on_product_order_id"
    t.index ["project_id"], name: "index_bill_forcast_rows_on_project_id"
    t.index ["receipt_information_id"], name: "index_bill_forcast_rows_on_receipt_information_id"
    t.index ["service_id"], name: "index_bill_forcast_rows_on_service_id"
    t.index ["service_month", "client_code"], name: "index_bill_forcast_rows_on_service_month"
    t.index ["smbc_transfer_account_id"], name: "index_bill_forcast_rows_on_smbc_transfer_account_id"
    t.index ["unit_id"], name: "index_bill_forcast_rows_on_unit_id"
    t.index ["user_id"], name: "index_bill_forcast_rows_on_user_id"
  end

  create_table "bill_forcast_summaries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "service_month"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.bigint "contract_num"
    t.bigint "service_num"
    t.string "kind"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "tup"
    t.boolean "contract_start"
    t.boolean "contract_end"
    t.string "pref_code"
    t.string "city_code"
    t.integer "sales_price"
    t.integer "friendlypoint_price"
    t.integer "cancel_friendlypoint_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_bill_forcast_summaries_on_alliance_id"
    t.index ["project_id"], name: "index_bill_forcast_summaries_on_project_id"
    t.index ["service_month", "alliance_id"], name: "index_bill_forcast_summaries_on_month_alliance_id"
    t.index ["service_month", "project_id"], name: "index_bill_forcast_summaries_on_month_project_id"
    t.index ["service_month", "unit_id"], name: "index_bill_forcast_summaries_on_month_unit_id"
    t.index ["service_month", "user_id"], name: "index_bill_forcast_summaries_on_month_user_id"
    t.index ["unit_id"], name: "index_bill_forcast_summaries_on_unit_id"
    t.index ["user_id"], name: "index_bill_forcast_summaries_on_user_id"
  end

  create_table "bill_forcasts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "service_month"
    t.bigint "monthly_lock_id"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.bigint "partner_id"
    t.integer "sales_price"
    t.integer "bill_price"
    t.integer "bill_alliance_price"
    t.integer "bank_collection_price"
    t.integer "alliance_collection_price"
    t.integer "prepay_price"
    t.integer "prepay_ticket_price"
    t.integer "alliance_ticket_price"
    t.integer "friendlypoint_price"
    t.integer "np_price"
    t.integer "deposit_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["client_code"], name: "index_bill_forcasts_on_client_code"
    t.index ["client_id"], name: "index_bill_forcasts_on_client_id"
    t.index ["customer_id"], name: "index_bill_forcasts_on_customer_id"
    t.index ["monthly_lock_id"], name: "index_bill_forcasts_on_monthly_lock_id"
    t.index ["service_month"], name: "index_bill_forcasts_on_service_month"
  end

  create_table "bill_meijis", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "bill_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "customer_pay_method_meiji_id"
    t.string "bank_code", limit: 4
    t.string "bank_branch_code", limit: 3
    t.integer "account_type"
    t.string "account_number"
    t.string "account_name_kana"
    t.integer "price"
    t.string "fail_type"
    t.datetime "export_at", precision: nil
    t.date "charge_at"
    t.datetime "imported_at", precision: nil
    t.date "clear_at"
    t.bigint "bill_outstanding_id"
    t.bigint "bill_refund_id"
    t.boolean "outstanding_included", default: false, null: false
    t.boolean "all_outstanding", default: false, null: false
    t.boolean "correction_included", default: false, null: false
    t.boolean "correction_excluded", default: false, null: false
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_month", "customer_id"], name: "index_bill_meijis_on_bill_month", unique: true
    t.index ["bill_outstanding_id"], name: "index_bill_meijis_on_bill_outstanding_id"
    t.index ["bill_refund_id"], name: "index_bill_meijis_on_bill_refund_id"
    t.index ["clear_at"], name: "index_bill_meijis_on_bill_clear_at"
    t.index ["customer_id", "bank_code", "bank_branch_code", "account_type", "account_number", "bill_month"], name: "index_bill_meijis_on_customer_id"
  end

  create_table "bill_outstanding_notices", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "bill_outstanding_id"
    t.boolean "sms", default: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_outstanding_id"], name: "index_bill_outstanding_notices_on_bill_outstanding_id"
  end

  create_table "bill_outstandings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "service_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.bigint "partner_id"
    t.bigint "bill_meiji_id"
    t.bigint "bill_smbc_id"
    t.bigint "bill_transfer_id"
    t.bigint "bill_creditcard_id"
    t.bigint "pay_method_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "smbc_transfer_account_id"
    t.integer "uncollected_price"
    t.boolean "manual_solve", default: false
    t.date "manual_solve_income_limit"
    t.date "manual_solve_income_at"
    t.string "status"
    t.boolean "stop_notice", default: false
    t.datetime "solved_at", precision: nil
    t.bigint "unit_id"
    t.bigint "user_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_creditcard_id"], name: "index_bill_standings_on_bill_creditcard_id"
    t.index ["bill_meiji_id"], name: "index_bill_standings_on_bill_meiji_id"
    t.index ["bill_smbc_id"], name: "index_bill_standings_on_bill_smbc_id"
    t.index ["bill_transfer_id"], name: "index_bill_standings_on_bill_transfer_id"
    t.index ["client_code"], name: "index_bill_standings_on_client_code"
    t.index ["client_id"], name: "index_bill_standings_on_client_id"
    t.index ["customer_id"], name: "index_bill_standings_on_customer_id"
    t.index ["partner_id"], name: "index_bill_standings_on_partner_id"
    t.index ["service_month"], name: "index_bill_outstandings_on_service_month"
    t.index ["unit_id"], name: "index_bill_standings_on_unit_id"
    t.index ["user_id"], name: "index_bill_standings_on_user_id"
  end

  create_table "bill_records", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "bill_month"
    t.date "smbc_import_date"
    t.date "meiji_import_date"
    t.date "creditcard_import_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_month"], name: "index_bill_records_on_bill_month"
  end

  create_table "bill_refunds", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "bill_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "bill_meiji_id"
    t.bigint "bill_smbc_id"
    t.bigint "bill_transfer_id"
    t.bigint "bill_creditcard_id"
    t.integer "refund_price"
    t.date "refund_date"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_creditcard_id"], name: "index_bill_refunds_on_bill_creditcard_id"
    t.index ["bill_meiji_id"], name: "index_bill_refunds_on_bill_meiji_id"
    t.index ["bill_month"], name: "index_bill_refunds_on_bill_month"
    t.index ["bill_smbc_id"], name: "index_bill_refunds_on_bill_smbc_id"
    t.index ["bill_transfer_id"], name: "index_bill_refunds_on_bill_transfer_id"
    t.index ["client_code"], name: "index_bill_refunds_on_client_code"
    t.index ["customer_id"], name: "index_bill_refunds_on_customer_id"
  end

  create_table "bill_row_collections", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "bill_id"
    t.bigint "bill_row_id"
    t.date "bill_month"
    t.date "service_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.bigint "partner_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "customer_workplace_optional_contract_id"
    t.bigint "product_order_id"
    t.bigint "client_sale_id"
    t.bigint "partner_menu_order_id"
    t.bigint "partner_admission_fee_id"
    t.bigint "partner_loyalty_fee_id"
    t.bigint "friendlypoint_id"
    t.bigint "ticket_instance_id"
    t.bigint "bill_outstanding_id"
    t.string "kind"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "tup"
    t.boolean "contract_start"
    t.boolean "contract_end"
    t.text "summary"
    t.bigint "pay_method_id"
    t.bigint "bill_meiji_id"
    t.bigint "bill_smbc_id"
    t.bigint "bill_transfer_id"
    t.bigint "bill_creditcard_id"
    t.bigint "bill_alliance_id"
    t.bigint "bill_alliance_performance_report_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "smbc_transfer_account_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.bigint "np_summary_transaction_id"
    t.bigint "np_credit_transaction_id"
    t.bigint "bill_information_id"
    t.bigint "receipt_information_id"
    t.string "pref_code"
    t.string "city_code"
    t.date "sales_date"
    t.integer "sales_price"
    t.integer "bill_price"
    t.integer "bill_alliance_price"
    t.integer "service_price"
    t.integer "transport_expense"
    t.integer "extend_service_price"
    t.integer "yearly_price"
    t.integer "advance_cash"
    t.integer "bank_collection_price"
    t.integer "alliance_collection_price"
    t.integer "prepay_price"
    t.integer "prepay_ticket_price"
    t.integer "alliance_ticket_price"
    t.integer "friendlypoint_price"
    t.integer "np_price"
    t.integer "deposit_price"
    t.integer "cancel_friendlypoint_price"
    t.string "customer_alliance_code"
    t.string "service_alliance_code"
    t.string "customer_name"
    t.string "customer_name_kana"
    t.string "postal_code"
    t.string "pref_name"
    t.string "city_name"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.string "fee_account_type"
    t.string "fee_type"
    t.string "tax_included_type"
    t.string "fee_calc_order_type"
    t.string "rate_fraction_type"
    t.string "fee_frequency_type"
    t.integer "fee_number"
    t.integer "fee_basis_price"
    t.integer "fee"
    t.string "alliance_tickets", limit: 1024
    t.boolean "correction"
    t.bigint "correction_bill_row_id"
    t.date "correction_cleared_at"
    t.text "memo"
    t.integer "sales"
    t.integer "cost"
    t.integer "profit"
    t.float "profit_rate"
    t.bigint "np_transaction_id"
    t.integer "np_forcast_fee"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_alliance_id"], name: "index_bill_rows_on_bill_alliance_id"
    t.index ["bill_creditcard_id"], name: "index_bill_row_collections_on_bill_creditcard_id"
    t.index ["bill_id"], name: "index_bill_row_collections_on_bill_id"
    t.index ["bill_information_id"], name: "index_bill_row_collections_on_bill_information_id"
    t.index ["bill_meiji_id"], name: "index_bill_row_collections_on_bill_meiji_id"
    t.index ["bill_month", "client_code"], name: "index_bill_row_collections_on_bill_month"
    t.index ["bill_smbc_id"], name: "index_bill_row_collections_on_bill_smbc_id"
    t.index ["bill_transfer_id"], name: "index_bill_row_collections_on_bill_transfer_id"
    t.index ["client_code"], name: "index_bill_row_collections_on_client_code"
    t.index ["client_id"], name: "index_bill_row_collections_on_client_id"
    t.index ["client_sale_id"], name: "index_bill_row_collections_on_client_sale_id"
    t.index ["customer_id"], name: "index_bill_row_collections_on_customer_id"
    t.index ["customer_pay_method_creditcard_id"], name: "index_bill_row_collections_on_customer_pay_method_creditcard_id"
    t.index ["customer_pay_method_meiji_id"], name: "index_bill_row_collections_on_customer_pay_method_meiji_id"
    t.index ["customer_pay_method_smbc_id"], name: "index_bill_row_collections_on_customer_pay_method_smbc_id"
    t.index ["customer_pay_method_transfer_id"], name: "index_bill_row_collections_on_customer_pay_method_transfer_id"
    t.index ["np_transaction_id"], name: "index_bill_row_collections_on_np_transaction_id"
    t.index ["product_order_id"], name: "index_bill_row_collections_on_product_order_id"
    t.index ["project_id"], name: "index_bill_row_collections_on_project_id"
    t.index ["receipt_information_id"], name: "index_bill_row_collections_on_receipt_information_id"
    t.index ["service_id"], name: "index_bill_row_collections_on_service_id"
    t.index ["service_month", "client_code"], name: "index_bill_row_collections_on_service_month"
    t.index ["smbc_transfer_account_id"], name: "index_bill_row_collections_on_smbc_transfer_account_id"
    t.index ["unit_id"], name: "index_bill_row_collections_on_unit_id"
    t.index ["user_id"], name: "index_bill_row_collections_on_user_id"
  end

  create_table "bill_row_profit_tmps", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "bill_row_id"
    t.bigint "service_id"
    t.integer "sales"
    t.integer "service_cost"
    t.integer "staff_cost"
    t.integer "staff_num"
    t.index ["bill_row_id"], name: "index_bill_row_profit_tmps_on_bill_row_id"
    t.index ["service_id"], name: "index_bill_row_profit_tmps_on_service_id"
  end

  create_table "bill_rows", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "bill_id"
    t.date "bill_month"
    t.date "service_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.bigint "partner_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "customer_workplace_optional_contract_id"
    t.bigint "product_order_id"
    t.bigint "client_sale_id"
    t.bigint "partner_menu_order_id"
    t.bigint "partner_admission_fee_id"
    t.bigint "partner_loyalty_fee_id"
    t.bigint "friendlypoint_id"
    t.bigint "ticket_instance_id"
    t.bigint "bill_outstanding_id"
    t.string "kind"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "tup"
    t.boolean "contract_start"
    t.boolean "contract_end"
    t.text "summary"
    t.bigint "pay_method_id"
    t.bigint "bill_meiji_id"
    t.bigint "bill_smbc_id"
    t.bigint "bill_transfer_id"
    t.bigint "bill_creditcard_id"
    t.bigint "bill_alliance_id"
    t.bigint "bill_alliance_performance_report_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "smbc_transfer_account_id"
    t.bigint "bill_information_id"
    t.bigint "receipt_information_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.bigint "np_summary_transaction_id"
    t.bigint "np_credit_transaction_id"
    t.string "pref_code"
    t.string "city_code"
    t.date "sales_date"
    t.integer "sales_price"
    t.integer "bill_price"
    t.integer "bill_alliance_price"
    t.integer "service_price"
    t.integer "transport_expense"
    t.integer "extend_service_price"
    t.integer "yearly_price"
    t.integer "advance_cash"
    t.integer "bank_collection_price"
    t.integer "alliance_collection_price"
    t.integer "prepay_price"
    t.integer "prepay_ticket_price"
    t.integer "alliance_ticket_price"
    t.integer "friendlypoint_price"
    t.integer "np_price"
    t.integer "deposit_price"
    t.integer "cancel_friendlypoint_price"
    t.string "customer_alliance_code"
    t.string "service_alliance_code"
    t.string "customer_name"
    t.string "customer_name_kana"
    t.string "postal_code"
    t.string "pref_name"
    t.string "city_name"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.string "fee_account_type"
    t.string "fee_type"
    t.string "tax_included_type"
    t.string "fee_calc_order_type"
    t.string "rate_fraction_type"
    t.string "fee_frequency_type"
    t.integer "fee_number"
    t.integer "fee_basis_price"
    t.integer "fee"
    t.string "alliance_tickets", limit: 1024
    t.boolean "correction"
    t.bigint "correction_bill_row_id"
    t.date "correction_cleared_at"
    t.text "memo"
    t.integer "sales"
    t.integer "cost"
    t.integer "profit"
    t.float "profit_rate"
    t.bigint "np_transaction_id"
    t.integer "np_forcast_fee"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_alliance_id"], name: "index_bill_rows_on_bill_alliance_id"
    t.index ["bill_creditcard_id"], name: "index_bill_rows_on_bill_creditcard_id"
    t.index ["bill_id"], name: "index_bill_rows_on_bill_id"
    t.index ["bill_information_id"], name: "index_bill_rows_on_bill_information_id"
    t.index ["bill_meiji_id"], name: "index_bill_rows_on_bill_meiji_id"
    t.index ["bill_month", "client_code"], name: "index_bill_rows_on_bill_month"
    t.index ["bill_smbc_id"], name: "index_bill_rows_on_bill_smbc_id"
    t.index ["bill_transfer_id"], name: "index_bill_rows_on_bill_transfer_id"
    t.index ["client_code"], name: "index_bill_rows_on_client_code"
    t.index ["client_id"], name: "index_bill_rows_on_client_id"
    t.index ["client_sale_id"], name: "index_bill_rows_on_client_sale_id"
    t.index ["correction_bill_row_id"], name: "index_bill_rows_on_correction_bill_row_id"
    t.index ["customer_id"], name: "index_bill_rows_on_customer_id"
    t.index ["customer_pay_method_creditcard_id"], name: "index_bill_rows_on_customer_pay_method_creditcard_id"
    t.index ["customer_pay_method_meiji_id"], name: "index_bill_rows_on_customer_pay_method_meiji_id"
    t.index ["customer_pay_method_smbc_id"], name: "index_bill_rows_on_customer_pay_method_smbc_id"
    t.index ["customer_pay_method_transfer_id"], name: "index_bill_rows_on_customer_pay_method_transfer_id"
    t.index ["np_credit_transaction_id"], name: "index_bill_rows_on_np_credit_transaction_id"
    t.index ["np_summary_transaction_id"], name: "index_bill_rows_on_np_summary_transaction_id"
    t.index ["np_transaction_id"], name: "index_bill_rows_on_np_transaction_id"
    t.index ["product_order_id"], name: "index_bill_rows_on_product_order_id"
    t.index ["project_id"], name: "index_bill_rows_on_project_id"
    t.index ["receipt_information_id"], name: "index_bill_rows_on_receipt_information_id"
    t.index ["service_id"], name: "index_bill_rows_on_service_id"
    t.index ["service_month", "client_code"], name: "index_bill_rows_on_service_month"
    t.index ["smbc_transfer_account_id"], name: "index_bill_rows_on_smbc_transfer_account_id"
    t.index ["unit_id"], name: "index_bill_rows_on_unit_id"
    t.index ["user_id"], name: "index_bill_rows_on_user_id"
  end

  create_table "bill_smbcs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "bill_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "customer_pay_method_smbc_id"
    t.string "bank_code", limit: 4
    t.string "bank_branch_code", limit: 3
    t.integer "account_type"
    t.string "account_number"
    t.string "account_name_kana"
    t.integer "price"
    t.string "fail_type"
    t.datetime "export_at", precision: nil
    t.date "charge_at"
    t.datetime "imported_at", precision: nil
    t.date "clear_at"
    t.bigint "bill_outstanding_id"
    t.bigint "bill_refund_id"
    t.boolean "outstanding_included", default: false, null: false
    t.boolean "all_outstanding", default: false, null: false
    t.boolean "correction_included", default: false, null: false
    t.boolean "correction_excluded", default: false, null: false
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_month", "customer_id"], name: "index_bill_smbcs_on_bill_month", unique: true
    t.index ["bill_outstanding_id"], name: "index_bill_smbcs_on_bill_outstanding_id"
    t.index ["bill_refund_id"], name: "index_bill_smbcs_on_bill_refund_id"
    t.index ["clear_at"], name: "index_bill_smbcs_on_bill_clear_at"
    t.index ["customer_id", "bank_code", "bank_branch_code", "account_type", "account_number", "bill_month"], name: "index_bill_smbcs_on_customer_id"
  end

  create_table "bill_summaries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "service_month"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.bigint "contract_num"
    t.bigint "service_num"
    t.string "kind"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "tup"
    t.boolean "contract_start"
    t.boolean "contract_end"
    t.string "pref_code"
    t.string "city_code"
    t.integer "sales_price"
    t.integer "friendlypoint_price"
    t.integer "cancel_friendlypoint_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_bill_summaries_on_alliance_id"
    t.index ["project_id"], name: "index_bill_summaries_on_project_id"
    t.index ["service_month", "alliance_id"], name: "index_bill_summaries_on_month_alliance_id"
    t.index ["service_month", "project_id"], name: "index_bill_summaries_on_month_project_id"
    t.index ["service_month", "unit_id"], name: "index_bill_summaries_on_month_unit_id"
    t.index ["service_month", "user_id"], name: "index_bill_summaries_on_month_user_id"
    t.index ["unit_id"], name: "index_bill_summaries_on_unit_id"
    t.index ["user_id"], name: "index_bill_summaries_on_user_id"
  end

  create_table "bill_transfers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "bill_month"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.bigint "partner_id"
    t.bigint "alliance_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "smbc_transfer_account_id"
    t.string "account_number"
    t.integer "price"
    t.bigint "income_transfer_id"
    t.integer "income_price"
    t.bigint "additional_income_transfer_id"
    t.integer "additional_income_price"
    t.date "income_limit_at"
    t.datetime "clear_at", precision: nil
    t.bigint "bill_outstanding_id"
    t.bigint "bill_refund_id"
    t.boolean "outstanding_included", default: false, null: false
    t.boolean "all_outstanding", default: false, null: false
    t.integer "fee"
    t.boolean "correction_included", default: false, null: false
    t.boolean "correction_excluded", default: false, null: false
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["account_number"], name: "index_bill_transfers_on_account_number"
    t.index ["additional_income_transfer_id"], name: "index_bill_transfers_on_additional_income_transfer_id"
    t.index ["bill_month", "client_code", "customer_pay_method_transfer_id"], name: "index_bill_transfers_on_bill_month"
    t.index ["bill_outstanding_id"], name: "index_bill_transfers_on_bill_outstanding_id"
    t.index ["bill_refund_id"], name: "index_bill_transfers_on_bill_refund_id"
    t.index ["clear_at"], name: "index_bill_transfers_on_bill_clear_at"
    t.index ["client_code"], name: "index_bill_transfers_on_client_code"
    t.index ["client_id"], name: "index_bill_transfers_on_client_id"
    t.index ["customer_id"], name: "index_bill_transfers_on_customer_id"
    t.index ["income_transfer_id"], name: "index_bill_transfers_on_income_transfer_id"
    t.index ["partner_id"], name: "index_bill_transfers_on_partner_id"
  end

  create_table "bills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "service_month"
    t.bigint "monthly_lock_id"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.bigint "partner_id"
    t.integer "sales_price"
    t.integer "bill_price"
    t.integer "bill_alliance_price"
    t.integer "bank_collection_price"
    t.integer "alliance_collection_price"
    t.integer "prepay_price"
    t.integer "prepay_ticket_price"
    t.integer "alliance_ticket_price"
    t.integer "friendlypoint_price"
    t.integer "np_price"
    t.integer "deposit_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["client_code"], name: "index_bills_on_client_code"
    t.index ["client_id"], name: "index_bills_on_client_id"
    t.index ["customer_id"], name: "index_bills_on_customer_id"
    t.index ["monthly_lock_id"], name: "index_bills_on_monthly_lock_id"
    t.index ["service_month"], name: "index_bills_on_service_month"
  end

  create_table "blocked_mails", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "email_address"
    t.string "cause1"
    t.string "cause2"
    t.string "cause3"
    t.text "comment"
    t.string "blocked_type"
    t.bigint "blocked_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["blocked_type", "blocked_id"], name: "index_blocked_mails_on_blocked"
    t.index ["email_address"], name: "index_blocked_mails_on_email_address"
  end

  create_table "branch_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "branch_id"
    t.string "line"
    t.string "station"
    t.text "memo"
    t.boolean "walkable", default: true, null: false
    t.integer "minute_to_station", default: 0, null: false
    t.integer "fee_to_station", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["branch_id"], name: "index_branch_routes_on_branch_id"
    t.index ["station"], name: "index_branch_routes_on_station"
  end

  create_table "branches", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "position"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.integer "staff_minimum_hourly_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "business_departments", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "rakurakuseisan_code"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "business_divisions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "business_department_id", null: false
    t.string "rakurakuseisan_code"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["business_department_id"], name: "index_business_division_on_business_department_id"
  end

  create_table "business_sections", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "business_division_id", null: false
    t.string "rakurakuseisan_code"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["business_division_id"], name: "index_business_section_on_business_division_id"
  end

  create_table "business_teams", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "business_section_id", null: false
    t.string "rakurakuseisan_code"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["business_section_id"], name: "index_business_team_on_business_section_id"
  end

  create_table "campaign_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "campaign_id"
    t.string "pref_code"
    t.string "city_code"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["campaign_id"], name: "index_campaign_areas_on_campaign_id"
    t.index ["city_code"], name: "index_campaign_areas_on_city_code"
    t.index ["pref_code"], name: "index_campaign_areas_on_pref_code"
  end

  create_table "campaign_busies", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.date "work_from"
    t.date "work_to"
    t.time "daytime_from"
    t.time "daytime_to"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "campaign_busy_dates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "campaign_busy_id"
    t.date "work_date"
    t.time "daytime_from"
    t.time "daytime_to"
    t.integer "add_rate"
    t.integer "add_rate2"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "campaign_channel_codes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "campaign_id"
    t.bigint "channel_id"
    t.string "code"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["campaign_id"], name: "index_campaign_channel_codes_on_campaign_id"
    t.index ["channel_id"], name: "index_campaign_channel_codes_on_campaign_discount_id"
  end

  create_table "campaign_discount_set_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "campaign_discount_id"
    t.bigint "menu_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["campaign_discount_id"], name: "index_campaign_discount_set_menus_on_campaign_discount_id"
    t.index ["menu_id"], name: "index_campaign_discount_set_menus_on_menu_id"
  end

  create_table "campaign_discounts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "name_to_customer"
    t.bigint "campaign_id"
    t.string "discount_unit"
    t.string "discount_type"
    t.integer "discount_amount"
    t.boolean "threshold_discount", default: false, null: false
    t.integer "threshold_amount"
    t.bigint "menu_id"
    t.boolean "packed"
    t.integer "minimum_minutes"
    t.integer "price"
    t.integer "extend_price"
    t.integer "transport_expense"
    t.integer "price2"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["campaign_id"], name: "index_campaign_discounts_on_campaign_id"
    t.index ["menu_id"], name: "index_campaign_discounts_on_menu_id"
  end

  create_table "campaigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.bigint "term_type_id"
    t.boolean "hour_charged", default: false, null: false
    t.boolean "contract_add", default: false, null: false
    t.string "alliance_type", default: "propers", null: false
    t.bigint "alliance_id"
    t.boolean "period_unlimited", default: true, null: false
    t.date "apply_from"
    t.date "apply_to"
    t.date "work_from"
    t.date "work_to"
    t.string "file"
    t.string "original_file_name"
    t.string "code"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_campaigns_on_alliance_id"
    t.index ["project_id"], name: "index_campaigns_on_project_id"
  end

  create_table "card_display_items", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "name_en"
    t.bigint "card_display_type_id"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "card_display_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "work_id"
    t.boolean "default_works", default: false, null: false
    t.string "name"
    t.string "name_en"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "carousel_contents", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "category", null: false
    t.string "title", null: false
    t.string "description"
    t.bigint "alliance_id"
    t.bigint "menu_id"
    t.string "uri"
    t.string "file"
    t.string "original_file_name"
    t.integer "display_order", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_carousel_contents_on_alliance_id"
    t.index ["display_order"], name: "index_carousel_contents_on_display_order", unique: true
    t.index ["menu_id"], name: "index_carousel_contents_on_menu_id"
  end

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.text "name", null: false
    t.string "file", null: false
    t.string "original_file_name", null: false
    t.string "title", null: false
    t.string "description", null: false
    t.integer "display_order", null: false
    t.bigint "project_id", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
    t.index ["display_order"], name: "index_categories_on_display_order", unique: true
    t.index ["project_id"], name: "index_categories_on_project_id"
  end

  create_table "category_option_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "category_option_id", null: false
    t.boolean "required", default: false, null: false
    t.integer "display_order", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["category_option_id"], name: "index_category_option_details_on_category_option_id"
    t.index ["display_order"], name: "index_category_option_details_on_display_order", unique: true
  end

  create_table "category_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "alliance_id"
    t.integer "menu_id", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_category_options_on_alliance_id"
    t.index ["category_id"], name: "index_category_options_on_category_id"
    t.index ["menu_id"], name: "index_category_options_on_menu_id"
  end

  create_table "channel_groups", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.boolean "customer"
    t.boolean "staff"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "channels", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "channel_group_id"
    t.string "name"
    t.boolean "customer"
    t.boolean "staff"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["channel_group_id"], name: "index_channels_on_channel_group_id"
  end

  create_table "chase_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "creation_auto_chase_id"
    t.string "chase_type"
    t.integer "chase_no"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "hour"
    t.integer "minute"
    t.datetime "chase_date", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "chat_contacts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "title", null: false
    t.text "contents", null: false
    t.datetime "pushed_at", precision: nil
    t.integer "contract_id"
    t.integer "service_assign_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "cities", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code", null: false
    t.string "pref_code", null: false
    t.string "name", limit: 100, null: false
    t.string "name_kana", null: false
    t.float "lon", null: false
    t.float "lat", null: false
    t.boolean "specialward"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["code"], name: "index_cities_on_code", unique: true
    t.index ["lat"], name: "index_cities_on_lat"
    t.index ["lon"], name: "index_cities_on_lon"
    t.index ["pref_code"], name: "index_cities_on_pref_code"
  end

  create_table "client_sales", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "client_id"
    t.date "sales_date"
    t.integer "price"
    t.boolean "prepaid", default: false, null: false
    t.string "memo"
    t.bigint "bill_row_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_row_id"], name: "index_client_sales_on_bill_row_id"
    t.index ["client_id"], name: "index_client_sales_on_client_id"
    t.index ["sales_date"], name: "index_client_sales_on_sales_date"
  end

  create_table "clients", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.bigint "smbc_transfer_account_id"
    t.string "code"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "commision_fee_calculations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "service_assign_id"
    t.string "kind"
    t.bigint "service_id"
    t.bigint "contract_id"
    t.bigint "service_menu_id"
    t.integer "commision_rate"
    t.integer "commision_fee"
    t.integer "sales_price"
    t.integer "loyalty_sales_price"
    t.text "calculation_memo"
    t.integer "lock_version", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_staff_assigns_on_contract_id"
    t.index ["service_id"], name: "index_staff_assigns_on_service_id"
  end

  create_table "complaint_histories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "complaint_id"
    t.string "complaints_type", default: "customer"
    t.text "content"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["complaint_id"], name: "index_complaint_histories_on_complaint_id"
  end

  create_table "complaint_history_contents_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "project_id"
    t.string "name"
    t.text "body"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "complaint_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "complaint_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["complaint_id"], name: "index_complaint_images_on_complaint_id"
  end

  create_table "complaint_type_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "complaint_type_id"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["complaint_type_id"], name: "index_complaint_type_details_on_complaint_type_id"
  end

  create_table "complaint_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "complaints", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.boolean "completed", default: false
    t.datetime "generated_at", precision: nil
    t.datetime "completed_at", precision: nil
    t.boolean "important"
    t.bigint "complaint_type_id"
    t.bigint "complaint_type_detail_id"
    t.string "manage_property_damage"
    t.string "generate_type"
    t.bigint "project_id"
    t.bigint "customer_id"
    t.bigint "staff_id"
    t.bigint "supported_staff_id"
    t.bigint "alliance_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.string "manage_status"
    t.string "title"
    t.text "body"
    t.bigint "originating_unit_id"
    t.text "cause"
    t.text "countermeasure"
    t.text "contact_memo"
    t.text "correspondence_report"
    t.datetime "correspondence_plan_date", precision: nil
    t.boolean "discount_needed"
    t.boolean "rework_needed"
    t.datetime "rework_from", precision: nil
    t.datetime "rework_to", precision: nil
    t.integer "rework_minutes"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_complaints_on_alliance_id"
    t.index ["complaint_type_detail_id"], name: "index_complaints_on_complaint_type_detail_id"
    t.index ["complaint_type_id"], name: "index_complaints_on_complaint_type_id"
    t.index ["contract_id"], name: "index_complaints_on_contract_id"
    t.index ["customer_id"], name: "index_complaints_on_customer_id"
    t.index ["project_id"], name: "index_complaints_on_project_id"
    t.index ["service_assign_id"], name: "index_complaints_on_service_assign_id"
    t.index ["service_id"], name: "index_complaints_on_service_id"
    t.index ["staff_id"], name: "index_complaints_on_staff_id"
    t.index ["supported_staff_id"], name: "index_complaints_on_supported_staff_id"
    t.index ["unit_id"], name: "index_complaints_on_unit_id"
    t.index ["user_id"], name: "index_complaints_on_user_id"
  end

  create_table "consumption_taxes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "tax_rate"
    t.date "apply_from"
    t.date "apply_to"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "contact_method_results", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contact_method_id"
    t.bigint "contact_result_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "contact_methods", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "contact_results", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "contact_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "contacts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "complaint_id"
    t.boolean "sent_sms"
    t.bigint "contact_type_id"
    t.bigint "contact_method_id"
    t.bigint "contact_result_id"
    t.text "context"
    t.string "connected_type"
    t.boolean "first_contact"
    t.string "mail_from"
    t.string "mail_to"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "complaint_history_id"
    t.bigint "staff_id"
    t.bigint "partner_id"
    t.bigint "customer_inquiry_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.datetime "contacted_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contacts_on_contract_id"
    t.index ["customer_id"], name: "index_contacts_on_customer_id"
    t.index ["customer_inquiry_id"], name: "index_contacts_on_customer_inquiry_id"
    t.index ["customer_workplace_id"], name: "index_contacts_on_customer_workplace_id"
    t.index ["partner_id"], name: "index_contacts_on_partner_id"
    t.index ["service_assign_id"], name: "index_contacts_on_service_assign_id"
    t.index ["service_id"], name: "index_contacts_on_service_id"
    t.index ["staff_id"], name: "index_contacts_on_staff_id"
  end

  create_table "contract_change_histories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "staff_id"
    t.string "kind"
    t.string "member_type"
    t.string "reason_type"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contact_change_histories_on_contract_id"
    t.index ["staff_id"], name: "index_contact_change_histories_on_staff_id"
  end

  create_table "contract_hope_staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "staff_id"
    t.string "status"
    t.text "staff_intro_note"
    t.text "staff_condition_note"
    t.boolean "has_strong_point"
    t.boolean "has_week_point"
    t.string "matching_way"
    t.text "result_remarks"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_hope_staffs_on_contract_id"
    t.index ["staff_id"], name: "index_contract_hope_staffs_on_staff_id"
  end

  create_table "contract_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_images_on_contract_id"
  end

  create_table "contract_karte_requests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.date "started_at"
    t.date "limited_at"
    t.text "note"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_karte_requests_on_contract_id"
  end

  create_table "contract_matching_puzzles", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "contract_id"
    t.string "kind"
    t.string "meridiem"
    t.integer "cycle_type"
    t.integer "weekday_code"
    t.time "work_from"
    t.time "work_to"
    t.integer "transport_minutes"
    t.integer "transport_back_minutes"
    t.date "puzzle_day"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "contract_matching_requests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.string "create_reason"
    t.text "request_matching_note"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contracts_on_contract_id"
  end

  create_table "contract_monthly_cycles", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.integer "month_number"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_monthly_cycles_on_contract_id"
  end

  create_table "contract_pdfs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "contract_id", null: false
    t.bigint "latest_contract_id", null: false
    t.datetime "downloaded_at", precision: nil
    t.date "answered_at"
    t.date "pdf_contract_at"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "contract_pdfs_customer_id"
  end

  create_table "contract_rests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.date "ym"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_rests_on_contract_id"
  end

  create_table "contract_special_skills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "special_skill_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_special_skills_on_contract_id"
    t.index ["special_skill_id"], name: "index_contract_special_skills_on_special_skill_id"
  end

  create_table "contract_tickets", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "ticket_id"
    t.boolean "code_needed"
    t.boolean "collection_needed"
    t.string "code"
    t.bigint "staff_id"
    t.boolean "received"
    t.integer "price"
    t.integer "contract_ticket_price"
    t.integer "contract_alliance_ticket_price"
    t.bigint "service_menu_id"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "contract_week_hope_schedules", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.integer "weekday_code"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_week_hope_schedules_on_contract_id"
  end

  create_table "contract_week_schedule_staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_week_schedule_id"
    t.bigint "staff_id"
    t.text "transport_route"
    t.text "transport_back_route"
    t.integer "transport_exchange_count"
    t.integer "transport_back_exchange_count"
    t.integer "transport_minutes"
    t.integer "transport_back_minutes"
    t.integer "transport_expense"
    t.integer "transport_back_expense"
    t.bigint "before_customer_workplace_id"
    t.bigint "after_customer_workplace_id"
    t.boolean "free_go_transport_expense", default: false, null: false
    t.boolean "free_back_transport_expense", default: false, null: false
    t.datetime "matching_at", precision: nil
    t.bigint "matching_user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_week_schedule_id"], name: "index_contract_week_schedule_staffs_on_contract_week_schedule_id"
    t.index ["staff_id"], name: "index_contract_week_schedule_staffs_on_staff_id"
  end

  create_table "contract_week_schedules", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.integer "weekday_code"
    t.time "work_from"
    t.time "work_to"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_week_schedules_on_contract_id"
  end

  create_table "contract_weekly_cycles", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.integer "week_number"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_weekly_cycles_on_contract_id"
  end

  create_table "contract_wf_approvals", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_wf_approvals_on_contract_id"
  end

  create_table "contract_works", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "work_id"
    t.integer "workable_type"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_contract_works_on_contract_id"
    t.index ["work_id"], name: "index_contract_works_on_work_id"
  end

  create_table "contracts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "status", null: false
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "alliance_id"
    t.string "original_type", default: "normal", null: false
    t.bigint "project_id"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "skip_tup", default: false, null: false
    t.bigint "hourly_menu_id"
    t.integer "minutes"
    t.integer "rest_minutes"
    t.integer "staff_num"
    t.boolean "manual_contact", default: false, null: false
    t.boolean "exclude_bus", default: false, null: false
    t.boolean "schedule_free", default: false, null: false
    t.boolean "non_task", default: false
    t.integer "total_price"
    t.integer "service_price"
    t.boolean "special_allowance", default: false, null: false
    t.integer "special_allowance_price"
    t.integer "admission_price"
    t.integer "yearly_price"
    t.integer "yearly2_price"
    t.integer "transport_expense"
    t.integer "additional_price"
    t.text "additional_memo"
    t.integer "discount_price"
    t.bigint "discount_type_id"
    t.bigint "discount_type_detail_id"
    t.text "discount_memo"
    t.integer "alliance_discount_price"
    t.integer "off_extra_additional_price"
    t.integer "fix_total_price"
    t.integer "fix_service_price"
    t.integer "fix_transport_expense"
    t.integer "fix_additional_price"
    t.integer "fix_discount_price"
    t.text "fix_additional_memo"
    t.text "fix_discount_memo"
    t.text "canceled_reason"
    t.string "purpose_type"
    t.text "purpose"
    t.integer "extend_price"
    t.integer "extend_minute"
    t.boolean "order_unlimited"
    t.boolean "cancel_transfer_unneeded"
    t.boolean "off_extra_billed"
    t.integer "off_extra_morning_hour"
    t.integer "off_extra_evening_hour"
    t.boolean "holiday_extra_billed"
    t.integer "salaryup"
    t.integer "cycle_type"
    t.integer "work_day_num"
    t.date "contract_at"
    t.date "cancel_at"
    t.string "alliance_collecting_type"
    t.bigint "pay_method_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.bigint "np_summary_transaction_id"
    t.bigint "np_credit_transaction_id"
    t.bigint "alliance_discount_id"
    t.integer "alliance_discount_chargable_price"
    t.text "work_contents"
    t.text "memo"
    t.date "contract_from"
    t.date "contract_to"
    t.date "service_from"
    t.date "service_to"
    t.date "matching_deadline"
    t.bigint "matching_user_id"
    t.datetime "matching_at", precision: nil
    t.bigint "org_contract_id"
    t.bigint "new_contract_id"
    t.bigint "customer_inquiry_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.boolean "takeover_card"
    t.boolean "handwork_needed"
    t.boolean "remove_new_cancel"
    t.text "remove_reason"
    t.string "update_source_url"
    t.integer "options_needed"
    t.text "note"
    t.text "matching_note"
    t.text "wanted_note"
    t.integer "matching_status"
    t.integer "matching_priority"
    t.string "together_type"
    t.string "proxy_type"
    t.string "proxy_accompanying"
    t.text "proxy_accompanying_remark"
    t.datetime "originally_contracted_at", precision: nil
    t.datetime "matching_requested_at", precision: nil
    t.integer "lock_version", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_contracts_on_alliance_id"
    t.index ["customer_id"], name: "index_contracts_on_customer_id"
    t.index ["customer_inquiry_id"], name: "index_contracts_on_customer_inquiry_id"
    t.index ["customer_np_credit_information_id"], name: "index_contracts_on_customer_np_credit_information_id"
    t.index ["customer_np_summary_information_id"], name: "index_contracts_on_customer_np_summary_information_id"
    t.index ["customer_pay_method_creditcard_id"], name: "index_contracts_on_customer_pay_method_creditcard_id"
    t.index ["customer_pay_method_meiji_id"], name: "index_contracts_on_customer_pay_method_meiji_id"
    t.index ["customer_pay_method_smbc_id"], name: "index_contracts_on_customer_pay_method_smbc_id"
    t.index ["customer_pay_method_transfer_id"], name: "index_contracts_on_customer_pay_method_transfer_id"
    t.index ["customer_workplace_id"], name: "index_contracts_on_customer_workplace_id"
    t.index ["discount_type_detail_id"], name: "index_contracts_on_discount_type_detail_id"
    t.index ["discount_type_id"], name: "index_contracts_on_discount_type_id"
    t.index ["matching_user_id"], name: "index_contracts_on_matching_user_id"
    t.index ["new_contract_id"], name: "index_contracts_on_new_contract_id"
    t.index ["np_credit_transaction_id"], name: "index_contracts_on_np_credit_transaction_id"
    t.index ["np_summary_transaction_id"], name: "index_contracts_on_np_summary_transaction_id"
    t.index ["org_contract_id"], name: "index_contracts_on_org_contract_id"
    t.index ["project_id", "service_from", "service_to"], name: "index_contracts_on_project_id"
    t.index ["term_type_id"], name: "index_contracts_on_term_type_id"
    t.index ["unit_id"], name: "index_contracts_on_unit_id"
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "cooking_method_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "cooking_provide_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "cooking_usage_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "creation_auto_chases", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "function_name"
    t.string "target_name"
    t.string "slack_notification_target"
    t.text "notification_sentence"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_alliances", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "alliance_id"
    t.string "code"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_customer_alliances_on_alliance_id"
    t.index ["customer_id"], name: "index_customer_alliances_on_customer_id"
  end

  create_table "customer_bears_web_contacts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "service"
    t.integer "cycle"
    t.bigint "menu_id"
    t.bigint "customer_id"
    t.string "customer_name"
    t.string "customer_name_kana"
    t.bigint "customer_workplace_id"
    t.string "gender"
    t.string "email"
    t.string "phone_number"
    t.string "post_code"
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "building"
    t.string "room_no"
    t.string "family_type"
    t.boolean "has_pet"
    t.string "pet_type"
    t.boolean "mail_magazine_sendable"
    t.string "coupon_code"
    t.string "company_code"
    t.string "company_name"
    t.integer "service_time"
    t.datetime "desire_date", precision: nil
    t.integer "desire_start_time"
    t.text "post_content"
    t.string "service_price"
    t.integer "consideration_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_bill_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.boolean "same_customers"
    t.boolean "post_needed"
    t.string "name"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "email"
    t.string "email2"
    t.string "email3"
    t.string "email4"
    t.boolean "service_name_ym"
    t.string "service_name"
    t.string "bill_name"
    t.string "receipt_name"
    t.string "notice"
    t.text "memo"
    t.boolean "same_work_month"
    t.boolean "pay_at_next_month"
    t.integer "pay_at_next_month_day"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_customer_bill_informations_on_customer_id"
  end

  create_table "customer_card_answers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "card_display_type_id"
    t.bigint "customer_card_id"
    t.integer "minutes"
    t.integer "priority"
    t.bigint "customer_card_questionnaire1"
    t.string "display_type1"
    t.string "answer_name1"
    t.string "answer_value1"
    t.bigint "customer_card_questionnaire2"
    t.string "display_type2"
    t.string "answer_name2"
    t.string "answer_value2"
    t.bigint "customer_card_questionnaire3"
    t.string "display_type3"
    t.string "answer_name3"
    t.string "answer_value3"
    t.bigint "customer_card_questionnaire4"
    t.string "display_type4"
    t.string "answer_name4"
    t.string "answer_value4"
    t.bigint "customer_card_questionnaire5"
    t.string "display_type5"
    t.string "answer_name5"
    t.string "answer_value5"
    t.bigint "customer_card_questionnaire6"
    t.string "display_type6"
    t.string "answer_name6"
    t.string "answer_value6"
    t.bigint "customer_card_questionnaire7"
    t.string "display_type7"
    t.string "answer_name7"
    t.string "answer_value7"
    t.bigint "customer_card_questionnaire8"
    t.string "display_type8"
    t.string "answer_name8"
    t.string "answer_value8"
    t.bigint "customer_card_questionnaire9"
    t.string "display_type9"
    t.string "answer_name9"
    t.string "answer_value9"
    t.bigint "customer_card_questionnaire10"
    t.string "display_type10"
    t.string "answer_name10"
    t.string "answer_value10"
    t.bigint "customer_card_questionnaire11"
    t.string "display_type11"
    t.string "answer_name11"
    t.string "answer_value11"
    t.bigint "customer_card_questionnaire12"
    t.string "display_type12"
    t.string "answer_name12"
    t.string "answer_value12"
    t.bigint "customer_card_questionnaire13"
    t.string "display_type13"
    t.string "answer_name13"
    t.string "answer_value13"
    t.bigint "customer_card_questionnaire14"
    t.string "display_type14"
    t.string "answer_name14"
    t.string "answer_value14"
    t.bigint "customer_card_questionnaire15"
    t.string "display_type15"
    t.string "answer_name15"
    t.string "answer_value15"
    t.bigint "customer_card_questionnaire16"
    t.string "display_type16"
    t.string "answer_name16"
    t.string "answer_value16"
    t.bigint "customer_card_questionnaire17"
    t.string "display_type17"
    t.string "answer_name17"
    t.string "answer_value17"
    t.bigint "customer_card_questionnaire18"
    t.string "display_type18"
    t.string "answer_name18"
    t.string "answer_value18"
    t.bigint "customer_card_questionnaire19"
    t.string "display_type19"
    t.string "answer_name19"
    t.string "answer_value19"
    t.bigint "customer_card_questionnaire20"
    t.string "display_type20"
    t.string "answer_name20"
    t.string "answer_value20"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_cleaning_exchange_objects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_cleaning_exchange_object_id"
    t.bigint "customer_card_change_point_cleaning_id"
    t.bigint "exchange_object_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_cleanings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cleaning_id"
    t.bigint "customer_card_change_point_id"
    t.bigint "customer_card_id"
    t.bigint "report_staff_id"
    t.integer "weekday_code"
    t.integer "priority"
    t.string "work_item"
    t.string "other_place"
    t.string "add_place"
    t.string "remove_place"
    t.string "new_linen_location"
    t.string "bed_making_location"
    t.string "exchange_object"
    t.string "old_linen_location"
    t.string "level"
    t.integer "work_time_min"
    t.string "garbage_dump_inside"
    t.string "garbage_dump_outside"
    t.string "garbage_place"
    t.string "garbage_separation"
    t.string "garbage_bag_place"
    t.boolean "outside_key"
    t.string "outside_key_memo"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_cooking_method_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cooking_method_option_id"
    t.bigint "customer_card_cooking_change_point_id"
    t.bigint "cooking_method_option_change_point_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_cooking_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cooking_option_id"
    t.bigint "customer_card_change_point_cooking_id"
    t.bigint "cooking_provide_option_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_cooking_usage_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cooking_usage_option_id"
    t.bigint "customer_card_change_point_cooking_id"
    t.bigint "cooking_usage_option_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_cookings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_change_point_id"
    t.bigint "customer_card_cookings_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "weekday_code"
    t.integer "priority"
    t.integer "adult_num"
    t.integer "child_num"
    t.string "main_for"
    t.string "purpose"
    t.string "recipe"
    t.string "cooking_style"
    t.integer "main_num"
    t.integer "sub_num"
    t.integer "soup_num"
    t.string "rice_location"
    t.float "rice_amount"
    t.string "rice_water_amount"
    t.string "rice_packaging_way"
    t.boolean "hoping_rice"
    t.string "cooking_provide_option"
    t.string "cooking_usage_option"
    t.string "amount"
    t.string "seasoning"
    t.text "allergy_food"
    t.text "dislike_food"
    t.text "like_food"
    t.string "cooking_water_type"
    t.text "cuting_board_selection"
    t.string "expired_food"
    t.string "surplus_food"
    t.integer "hob_num"
    t.text "knife_location"
    t.text "kitchenware_location"
    t.text "seasoning_location"
    t.text "seasoning_refrigerator_location"
    t.text "food_container_location"
    t.string "dishwasher_use"
    t.text "drainer_location"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_image_id"
    t.bigint "customer_card_change_point_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.string "file"
    t.string "label"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_keys", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer__point_key_id"
    t.bigint "customer_card_change_point_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "in_work_minitue"
    t.string "in_key_info"
    t.boolean "in_security_check"
    t.text "in_security_check_memo"
    t.integer "out_work_minitue"
    t.string "out_key_info"
    t.boolean "out_security_check"
    t.text "out_security_check_memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_kids_babies", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_change_point_id"
    t.bigint "customer_card__kids_baby_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "weekday_code"
    t.string "childcare_location"
    t.string "childcare_location_memo"
    t.boolean "pet"
    t.string "pet_memo"
    t.boolean "pick_up"
    t.string "facility_name"
    t.string "address"
    t.boolean "pick_up_card"
    t.string "entering_room_method"
    t.string "entering_room_method_memo"
    t.string "preregistration"
    t.string "considerations"
    t.boolean "meal_support"
    t.string "meal_support_memo"
    t.string "meal_time"
    t.string "meal_storing_place"
    t.boolean "snack"
    t.string "snack_memo"
    t.string "snack_time"
    t.boolean "nap"
    t.string "nap_memo"
    t.string "nap_time"
    t.boolean "outing"
    t.string "outing_memo"
    t.string "outing_time"
    t.boolean "shower"
    t.string "shower_memo"
    t.string "shower_time"
    t.string "other"
    t.string "promise"
    t.text "passing_status"
    t.string "current_day_contact_address_1"
    t.string "current_day_contact_address_2"
    t.string "insurance_certificate_location"
    t.string "regular_physician_name"
    t.string "regular_physician_tel"
    t.text "time_schedule"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_memos", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_memo_id"
    t.bigint "customer_card_change_point_id"
    t.bigint "customer_card_change_point_key_id"
    t.bigint "customer_card_change_point_cleaning_id"
    t.bigint "customer_card_change_point_cooking_id"
    t.bigint "customer_card_change_point_washing_id"
    t.bigint "customer_card_change_point_shopping_id"
    t.bigint "customer_card_change_point_kids_baby_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.text "memo", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_shoppings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_shopping_id"
    t.bigint "customer_card_change_point_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "weekday_code"
    t.integer "priority"
    t.string "shop_name"
    t.string "shop_place"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "money_preparation"
    t.text "charge_rule"
    t.integer "budget"
    t.string "vegetable_hope_type"
    t.string "maindish_hope_type"
    t.string "seasoning_hope_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_tools", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_tool_id"
    t.bigint "customer_card_change_point_id"
    t.bigint "customer_card_change_point_cleaning_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.text "tool_memo", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_point_washings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_washing_id"
    t.bigint "customer_card_change_point_id"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "weekday_code"
    t.integer "priority"
    t.string "work_item"
    t.string "wash_category"
    t.string "wash_other_category"
    t.string "clothes_location"
    t.string "detergent_type"
    t.string "detergent_location"
    t.string "washing_machine_course"
    t.string "course_detail"
    t.string "after_wash"
    t.string "dry_location"
    t.string "other_dry_location"
    t.text "dry_thing"
    t.string "bring_place"
    t.string "other_bring_place"
    t.string "after_do"
    t.text "iron_storing"
    t.text "iron_target"
    t.string "iron_clothes_storing"
    t.string "ironed_clothes_storing"
    t.string "receive_location"
    t.string "other_receive_location"
    t.boolean "receive_money_preparation"
    t.string "receive_money_location"
    t.string "receive_clothes_location"
    t.string "send_location"
    t.string "send_shop_location"
    t.boolean "send_money_preparation"
    t.string "send_money_location"
    t.string "send_clothes_kind"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_change_points", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "original_id"
    t.bigint "customer_card_id"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "check_staff_id"
    t.bigint "report_staff_id"
    t.integer "status"
    t.integer "tidying_policy"
    t.string "point"
    t.string "dustcloth_place"
    t.string "garbage_dump_inside"
    t.string "report_place"
    t.string "keep_out_room"
    t.string "no_contact_stuff"
    t.string "family_type"
    t.text "family_memo"
    t.integer "family_person_num"
    t.integer "family_child_num"
    t.integer "pet_type"
    t.text "pet_memo"
    t.integer "absence_type"
    t.integer "building_type"
    t.string "building_place"
    t.integer "floor_type"
    t.string "building_size"
    t.integer "has_security"
    t.text "in_out_memo"
    t.text "memo"
    t.text "ng_memo"
    t.string "purpose_type"
    t.text "purpose"
    t.text "optional_work_memo"
    t.text "staff_memo"
    t.string "language"
    t.boolean "deletion"
    t.boolean "adaptation"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_cleaning_exchange_objects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cleaning_id"
    t.bigint "exchange_object_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_cleanings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.integer "weekday_code"
    t.integer "priority", null: false
    t.string "work_item"
    t.string "other_place"
    t.string "new_linen_location"
    t.string "bed_making_location"
    t.string "exchange_object"
    t.string "old_linen_location"
    t.string "level"
    t.string "add_place"
    t.string "remove_place"
    t.integer "work_time_min"
    t.string "garbage_dump_inside"
    t.string "garbage_dump_outside"
    t.string "garbage_place"
    t.string "garbage_separation"
    t.string "garbage_bag_place"
    t.boolean "outside_key"
    t.string "outside_key_memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_cooking_method_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cooking_id"
    t.bigint "cooking_method_option_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_cooking_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cooking_id"
    t.bigint "cooking_provide_option_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_cooking_usage_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_cooking_id"
    t.bigint "cooking_usage_option_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_cookings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.integer "weekday_code"
    t.integer "priority", null: false
    t.integer "adult_num"
    t.integer "child_num"
    t.string "main_for"
    t.string "purpose"
    t.string "recipe"
    t.string "cooking_style"
    t.integer "main_num"
    t.integer "sub_num"
    t.integer "soup_num"
    t.string "rice_location"
    t.float "rice_amount"
    t.string "rice_water_amount"
    t.string "rice_packaging_way"
    t.boolean "hoping_rice"
    t.string "cooking_provide_option"
    t.string "cooking_usage_option"
    t.string "amount"
    t.string "seasoning"
    t.text "allergy_food"
    t.text "dislike_food"
    t.text "like_food"
    t.string "cooking_water_type"
    t.text "cuting_board_selection"
    t.string "expired_food"
    t.string "surplus_food"
    t.integer "hob_num"
    t.text "knife_location"
    t.text "kitchenware_location"
    t.text "seasoning_location"
    t.text "seasoning_refrigerator_location"
    t.text "food_container_location"
    t.string "dishwasher_use"
    t.text "drainer_location"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.bigint "customer_card_answer_id"
    t.string "file"
    t.string "label"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_keys", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.integer "in_work_minitue"
    t.string "in_key_info"
    t.boolean "in_security_check"
    t.text "in_security_check_memo"
    t.integer "out_work_minitue"
    t.string "out_key_info"
    t.boolean "out_security_check"
    t.text "out_security_check_memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_kids_babies", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.integer "weekday_code"
    t.string "childcare_location"
    t.string "childcare_location_memo"
    t.boolean "pet"
    t.string "pet_memo"
    t.boolean "pick_up"
    t.string "facility_name"
    t.string "address"
    t.boolean "pick_up_card"
    t.string "entering_room_method"
    t.string "entering_room_method_memo"
    t.string "preregistration"
    t.string "considerations"
    t.boolean "meal_support"
    t.string "meal_support_memo"
    t.string "meal_time"
    t.string "meal_storing_place"
    t.boolean "snack"
    t.string "snack_memo"
    t.string "snack_time"
    t.boolean "nap"
    t.string "nap_memo"
    t.string "nap_time"
    t.boolean "outing"
    t.string "outing_memo"
    t.string "outing_time"
    t.boolean "shower"
    t.string "shower_memo"
    t.string "shower_time"
    t.string "other"
    t.string "promise"
    t.text "passing_status"
    t.string "current_day_contact_address_1"
    t.string "current_day_contact_address_2"
    t.string "insurance_certificate_location"
    t.string "regular_physician_name"
    t.string "regular_physician_tel"
    t.text "time_schedule"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_memos", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.bigint "customer_card_answer_id"
    t.bigint "customer_card_key_id"
    t.bigint "customer_card_cleaning_id"
    t.bigint "customer_card_cooking_id"
    t.bigint "customer_card_washing_id"
    t.bigint "customer_card_shopping_id"
    t.bigint "customer_card_kids_baby_id"
    t.text "memo", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_questionnaires", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "name_en"
    t.string "display_type"
    t.bigint "card_display_type_id"
    t.bigint "card_display_item_id"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_shoppings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.integer "weekday_code"
    t.integer "priority", null: false
    t.string "shop_name"
    t.string "shop_place"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "money_preparation"
    t.text "charge_rule"
    t.integer "budget"
    t.string "vegetable_hope_type"
    t.string "maindish_hope_type"
    t.string "seasoning_hope_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_tools", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.bigint "customer_card_cleaning_id"
    t.text "tool_memo", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_card_washings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_card_id"
    t.integer "weekday_code"
    t.integer "priority", null: false
    t.string "work_item"
    t.string "wash_category"
    t.string "wash_other_category"
    t.string "clothes_location"
    t.string "detergent_type"
    t.string "detergent_location"
    t.string "washing_machine_course"
    t.string "course_detail"
    t.string "after_wash"
    t.string "dry_location"
    t.string "other_dry_location"
    t.text "dry_thing"
    t.string "bring_place"
    t.string "other_bring_place"
    t.string "after_do"
    t.text "iron_storing"
    t.text "iron_target"
    t.string "iron_clothes_storing"
    t.string "ironed_clothes_storing"
    t.string "receive_location"
    t.string "other_receive_location"
    t.boolean "receive_money_preparation"
    t.string "receive_money_location"
    t.string "receive_clothes_location"
    t.string "send_location"
    t.string "send_shop_location"
    t.boolean "send_money_preparation"
    t.string "send_money_location"
    t.string "send_clothes_kind"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_cards", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "original_id"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "check_staff_id"
    t.integer "status"
    t.integer "tidying_policy"
    t.string "dustcloth_place"
    t.string "garbage_dump_inside"
    t.string "report_place"
    t.string "keep_out_room"
    t.string "no_contact_stuff"
    t.string "family_type"
    t.text "family_memo"
    t.integer "family_person_num"
    t.integer "family_child_num"
    t.integer "pet_type"
    t.text "pet_memo"
    t.integer "absence_type"
    t.integer "building_type"
    t.string "building_place"
    t.integer "floor_type"
    t.string "building_size"
    t.integer "has_security"
    t.text "in_out_memo"
    t.text "memo"
    t.text "ng_memo"
    t.string "purpose_type"
    t.text "purpose"
    t.text "optional_work_memo"
    t.text "staff_memo"
    t.string "language"
    t.boolean "karte_renew", default: false
    t.integer "total_work_time"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_dliving_contracts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.boolean "visible", default: false, null: false
    t.datetime "downloaded_at", precision: nil
    t.datetime "answered_at", precision: nil
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "customer_dliving_contracts_on_customer_id"
  end

  create_table "customer_foreigner_ng_type_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "foreigner_ng_type_id"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["foreigner_ng_type_id"], name: "index_customer_foreigner_ng_type_details_on_foreigner_ng_type_id"
  end

  create_table "customer_foreigner_ng_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_identifications", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "uuid"
    t.integer "identification_type"
    t.string "result"
    t.string "status"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_customer_informations_on_customer_id"
  end

  create_table "customer_inquiries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "original_id"
    t.string "status", default: "initial", null: false
    t.string "manage_status", default: "initial", null: false
    t.string "failure_status"
    t.datetime "denied_at", precision: nil
    t.string "denied_reason"
    t.string "kind", default: "first", null: false
    t.string "rank", default: "undefined", null: false
    t.string "exclusion_inquiry", default: "none"
    t.bigint "inquiry_method_id"
    t.bigint "channel_group_id"
    t.bigint "channel_id"
    t.integer "introduction_customer_id"
    t.integer "introduction_staff_id"
    t.integer "introduction_user_id"
    t.text "inquiry_memo"
    t.text "inquiry_reason"
    t.boolean "manual_contact", default: false, null: false
    t.boolean "is_together"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "customer_web_contact_id"
    t.bigint "customer_alliance_id"
    t.bigint "staff_id"
    t.boolean "temporary_order"
    t.bigint "alliance_id"
    t.bigint "aircon_type_id"
    t.string "original_type", default: "normal", null: false
    t.bigint "project_id"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "hour_charged"
    t.bigint "hourly_menu_id"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.text "work_contents"
    t.integer "minutes"
    t.integer "rest_minutes"
    t.integer "staff_num"
    t.integer "total_price"
    t.integer "service_price"
    t.integer "admission_price"
    t.integer "yearly_price"
    t.integer "yearly2_price"
    t.integer "transport_expense"
    t.integer "discount_price"
    t.bigint "discount_type_id"
    t.bigint "discount_type_detail_id"
    t.text "discount_memo"
    t.integer "additional_price"
    t.text "additional_memo"
    t.integer "alliance_discount_price"
    t.string "campaign_code"
    t.string "code"
    t.bigint "campaign_id"
    t.integer "campaign_discount_price"
    t.bigint "campaign_busy_id"
    t.integer "campaign_busy_add_price"
    t.integer "off_extra_additional_price"
    t.integer "fix_total_price"
    t.integer "fix_service_price"
    t.integer "fix_transport_expense"
    t.integer "fix_additional_price"
    t.integer "fix_discount_price"
    t.text "fix_additional_memo"
    t.text "fix_discount_memo"
    t.integer "extend_price"
    t.boolean "order_unlimited", default: false, null: false
    t.boolean "off_extra_billed", default: false, null: false
    t.integer "off_extra_morning_hour"
    t.integer "off_extra_evening_hour"
    t.boolean "holiday_extra_billed", default: false, null: false
    t.integer "salaryup"
    t.bigint "alliance_discount_id"
    t.integer "alliance_discount_chargable_price"
    t.integer "cycle_type"
    t.integer "work_day_num"
    t.integer "week_num"
    t.string "alliance_collecting_type"
    t.bigint "pay_method_id"
    t.date "prepay_date"
    t.text "customer_pay_memo"
    t.text "memo"
    t.string "order_no"
    t.datetime "firsthearing_at", precision: nil
    t.datetime "firsthearing_hope_at", precision: nil
    t.datetime "hope_work_date", precision: nil
    t.datetime "correspondence_plan_date", precision: nil
    t.text "next_action"
    t.string "urgency"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "firsthearing_unit_id"
    t.bigint "firsthearing_user_id"
    t.bigint "firsthearing_setter_id"
    t.datetime "firsthearing_setted_up_at", precision: nil
    t.integer "lock_version", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["aircon_type_id"], name: "index_aircon_type_id"
    t.index ["alliance_id"], name: "index_alliance_id"
    t.index ["customer_id"], name: "index_customer_id"
    t.index ["customer_workplace_id"], name: "index_customer_workplace_id"
    t.index ["denied_at", "status"], name: "index_status"
    t.index ["discount_type_detail_id"], name: "index_customer_inquiries_on_discount_type_detail_id"
    t.index ["discount_type_id"], name: "index_customer_inquiries_on_discount_type_id"
    t.index ["hourly_menu_id"], name: "index_hourly_menu_id"
    t.index ["kind"], name: "index_kind"
    t.index ["project_id"], name: "index_project_id"
    t.index ["term_type_id"], name: "index_term_type_id"
  end

  create_table "customer_inquiry_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_inquiry_id"
    t.bigint "menu_id"
    t.integer "order_num"
    t.integer "service_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_inquiry_id"], name: "index_customer_inquiry_id"
    t.index ["menu_id"], name: "index_menu_id"
  end

  create_table "customer_inquiry_special_skills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_inquiry_id"
    t.bigint "special_skill_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_inquiry_tickets", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_inquiry_id"
    t.bigint "ticket_id"
    t.boolean "code_needed"
    t.boolean "collection_needed"
    t.string "code"
    t.bigint "staff_id"
    t.boolean "received"
    t.integer "price"
    t.integer "customer_inquiry_ticket_price"
    t.integer "customer_inquiry_alliance_ticket_price"
    t.bigint "service_menu_id"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_inquiry_work_contents_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "project_id"
    t.string "name"
    t.text "body"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_inquiry_works", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_inquiry_id"
    t.bigint "work_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_mybears", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "login_id"
    t.string "encrypted_password", default: "", null: false
    t.string "password_salt"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "auth_token"
    t.boolean "use_app"
    t.datetime "app_used_at", precision: nil
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at", precision: nil
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.datetime "sms_sent_at", precision: nil
    t.string "sms_code_token"
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "refresh_token"
    t.datetime "refresh_token_expired_at", precision: nil
    t.json "tokens"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["auth_token"], name: "customer_mybears_on_auth_token", unique: true
    t.index ["customer_id", "deleted_at"], name: "customer_mybears_on_customer_id", unique: true
    t.index ["login_id"], name: "customer_mybears_on_login_id", unique: true
    t.index ["reset_password_token"], name: "customer_mybears_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_customer_mybears_on_uid_and_provider"
  end

  create_table "customer_ng_staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "staff_id"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_customer_ng_staffs_on_customer_id"
    t.index ["staff_id"], name: "index_customer_ng_staffs_on_staff_id"
  end

  create_table "customer_np_credit_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.boolean "inactive", default: false, null: false
    t.boolean "same_customers"
    t.string "name"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone", limit: 11
    t.string "email"
    t.string "associate_department"
    t.string "associate_name"
    t.string "np_credit_company_id"
    t.string "tradable_status"
    t.string "billable_status"
    t.string "guaranteeable_status"
    t.string "order_status"
    t.integer "credit_price"
    t.boolean "pay_at_next_month"
    t.string "notice"
    t.text "error_no"
    t.text "error_contents"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_np_credit_on_customer_id"
    t.index ["np_credit_company_id"], name: "index_np_credit_on_np_credit_company_id"
  end

  create_table "customer_np_summary_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.boolean "inactive", default: false, null: false
    t.boolean "same_customers", default: false, null: false
    t.string "name"
    t.string "name_kana"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone", limit: 11
    t.string "email"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_np_summary_on_customer_id"
  end

  create_table "customer_pay_method_creditcards", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.boolean "active"
    t.date "limit_date"
    t.integer "smbc_seq"
    t.string "brand"
    t.string "last4"
    t.string "first6"
    t.text "memo"
    t.bigint "bill_information_id"
    t.bigint "receipt_information_id"
    t.integer "status"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "customer_updated_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id", "smbc_seq"], name: "index_customer_pay_method_creditcards_on_customer_id", unique: true
  end

  create_table "customer_pay_method_meijis", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "bank_code", limit: 4
    t.string "bank_branch_code", limit: 3
    t.integer "account_type", default: 1, null: false
    t.string "account_number"
    t.string "account_name"
    t.string "account_name_kana"
    t.boolean "inactive"
    t.integer "status"
    t.date "open_date"
    t.string "memo"
    t.string "code"
    t.bigint "bill_information_id"
    t.bigint "receipt_information_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bank_code", "bank_branch_code"], name: "index_customer_pay_method_meijis_on_bank_code"
    t.index ["customer_id", "bank_code", "bank_branch_code", "account_type", "account_number", "deleted_at"], name: "index_customer_pay_method_meijis_on_customer_id", unique: true
  end

  create_table "customer_pay_method_smbcs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "bank_code", limit: 4
    t.string "bank_branch_code", limit: 3
    t.integer "account_type", default: 1, null: false
    t.string "account_number"
    t.string "account_name"
    t.string "account_name_kana"
    t.boolean "inactive"
    t.integer "status"
    t.date "open_date"
    t.string "memo"
    t.bigint "bill_information_id"
    t.bigint "receipt_information_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bank_code", "bank_branch_code"], name: "index_customer_pay_method_smbcs_on_bank_code"
    t.index ["customer_id", "bank_code", "bank_branch_code", "account_type", "account_number", "deleted_at"], name: "index_customer_pay_method_smbcs_on_customer_id", unique: true
  end

  create_table "customer_pay_method_transfers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "smbc_transfer_account_id"
    t.boolean "active"
    t.bigint "bill_information_id"
    t.bigint "receipt_information_id"
    t.boolean "pay_at_next_month"
    t.integer "pay_at_next_month_day"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_customer_pay_method_transfers_on_customer_id"
    t.index ["smbc_transfer_account_id"], name: "index_customer_pay_method_transfers_on_smbc_transfer_account_id"
  end

  create_table "customer_pay_methods", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "pay_method_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_customer_pay_methods_on_customer_id"
    t.index ["customer_np_credit_information_id"], name: "index_customer_pay_methods_on_customer_np_credit_information_id"
    t.index ["customer_np_summary_information_id"], name: "index_customer_pay_methods_on_customer_np_summary_information_id"
    t.index ["customer_pay_method_creditcard_id"], name: "index_customer_pay_methods_on_customer_pay_method_creditcard_id"
    t.index ["customer_pay_method_meiji_id"], name: "index_customer_pay_methods_on_customer_pay_method_meiji_id"
    t.index ["customer_pay_method_smbc_id"], name: "index_customer_pay_methods_on_customer_pay_method_smbc_id"
    t.index ["customer_pay_method_transfer_id"], name: "index_customer_pay_methods_on_customer_pay_method_transfer_id"
  end

  create_table "customer_projects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_customer_projects_on_customer_id"
    t.index ["project_id"], name: "index_customer_projects_on_project_id"
    t.index ["unit_id"], name: "index_customer_projects_on_unit_id"
    t.index ["user_id"], name: "index_customer_projects_on_user_id"
  end

  create_table "customer_quotation_rows", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_quotation_id"
    t.string "item"
    t.integer "order_num"
    t.string "unit"
    t.integer "price"
    t.integer "subtotal"
    t.integer "tax"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_quotation_id"], name: "index_customer_quotation_rows_on_customer_quote_id"
  end

  create_table "customer_quotations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "customer_name"
    t.bigint "customer_inquiry_id"
    t.string "customer_inquiry_name"
    t.date "delivery_at"
    t.string "title"
    t.string "work_date"
    t.string "work_place"
    t.string "pay_method"
    t.string "expire_at"
    t.integer "sub_total"
    t.integer "tax"
    t.integer "total"
    t.text "conditions"
    t.boolean "tax_included"
    t.bigint "user_id"
    t.bigint "partner_id"
    t.bigint "staff_id"
    t.integer "format_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_customer_quotations_on_customer_id"
    t.index ["customer_inquiry_id"], name: "index_customer_quotations_on_customer_inquiry_id"
    t.index ["partner_id"], name: "index_customer_quotations_on_partner_id"
    t.index ["staff_id"], name: "index_customer_quotations_on_staff_id"
    t.index ["user_id"], name: "index_customer_quotations_on_user_id"
  end

  create_table "customer_report_events", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "seq_order"
    t.boolean "inactive"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_report_requests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "seq_order"
    t.boolean "inactive"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_web_contact_mybears", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "user_id"
    t.bigint "staff_id"
    t.bigint "parent_id"
    t.string "kind"
    t.bigint "service_id"
    t.integer "project_id"
    t.string "term_kind"
    t.datetime "hope1_work_from", precision: nil
    t.datetime "hope2_work_from", precision: nil
    t.datetime "hope3_work_from", precision: nil
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_on_customer_id"
    t.index ["project_id"], name: "index_on_project_id"
    t.index ["service_id"], name: "index_on_service_id"
  end

  create_table "customer_web_contact_recommends", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_web_contact_id"
    t.bigint "customer_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "customer_web_contacts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "recommend_customer_id"
    t.bigint "recommend_customer_workplace_id"
    t.integer "service"
    t.integer "cycle"
    t.bigint "menu_id"
    t.text "content"
    t.boolean "companied"
    t.string "customer_name"
    t.string "customer_name_kana"
    t.string "company_name"
    t.string "department"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "building"
    t.string "room_no"
    t.string "phone", limit: 11
    t.string "email"
    t.boolean "mail_magazine_sendable"
    t.string "contact_memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.string "order_no"
    t.index ["created_at"], name: "customer_web_contacts_on_created_at"
    t.index ["menu_id"], name: "customer_web_contacts_on_menu_id"
  end

  create_table "customer_workplace_appearance_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.string "label", null: false
    t.string "file"
    t.string "original_file_name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_cw_appearance_images_on_customer_workplace_id"
  end

  create_table "customer_workplace_babies", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.string "name"
    t.string "name_kana"
    t.date "birthday"
    t.integer "age"
    t.string "gender"
    t.string "memo"
    t.string "toilet_method"
    t.string "diaper_storing_place"
    t.string "diaper_disposable_one"
    t.boolean "allergy_eating"
    t.string "allergy_eating_memo"
    t.boolean "allergy_animal"
    t.string "allergy_animal_memo"
    t.string "normal_temperature"
    t.boolean "fault"
    t.string "fault_memo"
    t.string "personality"
    t.string "favorite_play"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_customer_workplace_babies_on_customer_workplace_id"
  end

  create_table "customer_workplace_deliveries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.date "delivery_date"
    t.integer "delivery_type"
    t.bigint "user_id"
    t.bigint "staff_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_customer_workplace_deliveries_on_customer_workplace_id"
    t.index ["staff_id"], name: "index_customer_workplace_deliveries_on_staff_id"
    t.index ["user_id"], name: "index_customer_workplace_deliveries_on_user_id"
  end

  create_table "customer_workplace_emails", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.string "email"
    t.boolean "auto_sendable"
    t.boolean "mailmaga_sendable"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_customer_workplace_emails_on_customer_id"
    t.index ["email"], name: "index_customer_workplace_emails_on_email"
  end

  create_table "customer_workplace_key_deliveries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_key_id"
    t.bigint "customer_workplace_delivery_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_delivery_id"], name: "index_customer_workplace_key_deliveries_on_delivery_id"
    t.index ["customer_workplace_key_id"], name: "index_customer_workplace_key_deliveries_on_key_id"
  end

  create_table "customer_workplace_keys", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.bigint "key_station_id"
    t.bigint "staff_id"
    t.string "code"
    t.string "number"
    t.string "number_2"
    t.string "number_3"
    t.string "number_4"
    t.string "password"
    t.text "memo"
    t.integer "status"
    t.integer "next_action_type"
    t.date "next_action_at"
    t.bigint "key_storage_id"
    t.string "storage_number"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_customer_workplace_keys_on_customer_workplace_id"
    t.index ["key_station_id"], name: "index_customer_workplace_keys_on_key_station_id"
    t.index ["key_storage_id"], name: "index_customer_workplace_keys_on_key_storage_id"
  end

  create_table "customer_workplace_matching_ng_conditions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.bigint "matching_ng_condition_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_workplace_ng_conditions_on_customer_workplace_id"
    t.index ["matching_ng_condition_id"], name: "index_workplace_ng_conditions_on_matching_ng_condition_id"
  end

  create_table "customer_workplace_optional_contract_corrections", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_optional_contract_id"
    t.date "correction_month"
    t.bigint "correction_bill_row_id"
    t.bigint "bill_row_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["correction_bill_row_id"], name: "index_cwooc_corrections_on_correction_bill_row_id"
    t.index ["customer_workplace_optional_contract_id", "correction_month", "correction_bill_row_id", "deleted_at"], name: "cwooc_corrections_on_service_month", unique: true
  end

  create_table "customer_workplace_optional_contracts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "contract_id"
    t.bigint "alliance_id"
    t.bigint "project_id"
    t.string "kind"
    t.integer "price"
    t.date "contract_at"
    t.bigint "pay_method_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.bigint "np_summary_transaction_id"
    t.bigint "np_credit_transaction_id"
    t.date "contract_from"
    t.date "contract_to"
    t.text "memo"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_workplace_contracts_on_alliance_id"
    t.index ["contract_id"], name: "index_workplace_contracts_on_contract_id"
    t.index ["customer_id"], name: "index_workplace_contracts_on_customer_id"
    t.index ["customer_np_credit_information_id"], name: "index_workplace_contracts_on_customer_np_credit_information_id"
    t.index ["customer_np_summary_information_id"], name: "index_workplace_contracts_on_customer_np_summary_information_id"
    t.index ["customer_workplace_id"], name: "index_workplace_contracts_on_customer_workplace_id"
    t.index ["np_credit_transaction_id"], name: "index_workplace_contracts_on_np_credit_transaction_id"
    t.index ["np_summary_transaction_id"], name: "index_workplace_contracts_on_np_summary_transaction_id"
    t.index ["unit_id"], name: "index_workplace_contracts_on_unit_id"
    t.index ["user_id"], name: "index_workplace_contracts_on_user_id"
  end

  create_table "customer_workplace_phones", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.string "phone", limit: 11
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_customer_workplace_phones_on_customer_id"
  end

  create_table "customer_workplace_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_workplace_id"
    t.string "line"
    t.string "station"
    t.string "station_rail"
    t.text "memo"
    t.boolean "walkable", default: true, null: false
    t.integer "minute_to_station", default: 0, null: false
    t.integer "fee_to_station", default: 0, null: false
    t.string "start_bus_stop"
    t.string "end_bus_stop"
    t.string "go_landmark"
    t.string "back_landmark"
    t.boolean "ekispert_authenticated", default: true, null: false
    t.integer "minute_between_stations"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_customer_workplace_routes_on_customer_workplace_id"
    t.index ["station"], name: "index_customer_workplace_routes_on_station"
  end

  create_table "customer_workplaces", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.boolean "companied"
    t.string "name"
    t.string "name_kana"
    t.string "name_en"
    t.string "name_search"
    t.string "name_kana_search"
    t.string "gender"
    t.date "birthday"
    t.string "associate_department"
    t.string "associate_post"
    t.string "associate_name"
    t.string "associate_name_kana"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.boolean "hand_modifying"
    t.boolean "none_bus_charged"
    t.string "phone", limit: 11
    t.string "phone_memo"
    t.string "phone_mobile", limit: 11
    t.string "phone_mobile_memo"
    t.string "emergency_phone1", limit: 11
    t.string "emergency_phone_memo1"
    t.string "emergency_phone2", limit: 11
    t.string "emergency_phone_memo2"
    t.string "fax", limit: 10
    t.string "email"
    t.string "email_mobile"
    t.string "email_memo"
    t.string "email_mobile_memo"
    t.string "email_contact"
    t.text "contact_memo"
    t.text "information_to_staff"
    t.text "negative_to_staff"
    t.integer "parking_type"
    t.text "parking_memo"
    t.string "family_type"
    t.text "family_memo"
    t.integer "family_person_num"
    t.integer "family_child_num"
    t.integer "pet_type"
    t.text "pet_memo"
    t.integer "absence_type"
    t.integer "building_type"
    t.integer "floor_type"
    t.text "building_memo"
    t.string "room_layout"
    t.string "room_width"
    t.string "building_place"
    t.string "keep_out_room"
    t.string "no_contact_stuff"
    t.string "building_size"
    t.text "rematching_memo"
    t.string "dustcloth_place"
    t.text "tool_place"
    t.string "tool_memo"
    t.integer "has_security"
    t.text "in_out_memo"
    t.integer "garbage_dump_type"
    t.string "garbage_dump_outside"
    t.string "garbage_dump_inside"
    t.string "kitchen_detergent_place"
    t.string "bath_detergent_place"
    t.string "toilet_detergent_place"
    t.string "washroom_detergent_place"
    t.string "report_place"
    t.string "fixture_memo"
    t.text "waiting_location"
    t.integer "qc_type"
    t.text "qc_memo"
    t.bigint "mansion_id"
    t.bigint "mansion_building_id"
    t.bigint "mansion_room_id"
    t.string "file"
    t.string "original_file_name"
    t.boolean "able_sms", default: true, null: false
    t.boolean "not_used"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["city_code"], name: "index_customer_workplaces_on_city_code"
    t.index ["customer_id"], name: "index_customer_workplaces_on_customer_id"
    t.index ["email"], name: "index_customer_workplaces_on_email"
    t.index ["email_mobile"], name: "index_customer_workplaces_on_email_mobile"
    t.index ["lat"], name: "index_customer_workplaces_on_lat"
    t.index ["lon"], name: "index_customer_workplaces_on_lon"
    t.index ["mansion_building_id"], name: "index_customer_workplaces_on_mansion_building_id"
    t.index ["mansion_id"], name: "index_customer_workplaces_on_mansion_id"
    t.index ["mansion_room_id"], name: "index_customer_workplaces_on_mansion_room_id"
    t.index ["name_kana_search"], name: "index_customer_workplaces_on_name_kana_search"
    t.index ["name_search"], name: "index_customer_workplaces_on_name_search"
    t.index ["phone"], name: "index_customer_workplaces_on_phone"
    t.index ["phone_mobile"], name: "index_customer_workplaces_on_phone_mobile"
    t.index ["pref_code"], name: "index_customer_workplaces_on_pref_code"
  end

  create_table "customers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "status", default: "inqury"
    t.boolean "companied"
    t.string "name"
    t.string "name_kana"
    t.string "name_en"
    t.string "name_search"
    t.string "name_kana_search"
    t.string "gender"
    t.date "birthday"
    t.string "company_name"
    t.string "department"
    t.bigint "industry_id"
    t.bigint "job_id"
    t.string "job_name"
    t.string "president_name"
    t.string "associate_department"
    t.string "associate_post"
    t.string "associate_name"
    t.string "associate_name_kana"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone", limit: 11
    t.string "phone_memo"
    t.string "phone_mobile", limit: 11
    t.string "phone_mobile_memo"
    t.string "fax", limit: 10
    t.string "email"
    t.string "email_mobile"
    t.string "email_memo"
    t.string "email_mobile_memo"
    t.string "email_contact"
    t.string "email_mailmaga"
    t.boolean "mailmaga_sendable"
    t.text "contact_memo"
    t.boolean "monitor"
    t.bigint "inquiry_method_id"
    t.bigint "channel_group_id"
    t.bigint "channel_id"
    t.integer "introduction_customer_id"
    t.integer "introduction_staff_id"
    t.integer "introduction_user_id"
    t.text "inquiry_memo"
    t.text "inquiry_reason"
    t.boolean "has_ng_staff"
    t.boolean "ok_foreigner_staff"
    t.boolean "ok_foreigner_spot_staff"
    t.bigint "customer_foreigner_ng_type_id"
    t.bigint "customer_foreigner_ng_type_detail_id"
    t.text "foreigner_ng_memo"
    t.boolean "ng_foreigner_staff"
    t.boolean "ng_foreigner_spot_staff"
    t.boolean "mens_ok"
    t.integer "ng_staff_age_upper"
    t.integer "ng_staff_age_lower"
    t.text "ng_staff_memo"
    t.boolean "new_subscription"
    t.boolean "caution"
    t.boolean "priority_assigns"
    t.boolean "ng_followup"
    t.boolean "ng_outbound"
    t.boolean "ikkyaku_customer"
    t.string "vip"
    t.datetime "vip_from", precision: nil
    t.text "vip_remark"
    t.boolean "receipt_unneeded"
    t.boolean "bill_unneeded"
    t.string "password_change_code"
    t.datetime "password_change_limit", precision: nil
    t.boolean "ng_directmail"
    t.boolean "using_apuri"
    t.integer "mauchi_id"
    t.string "mauchi_url"
    t.datetime "login_date_of_mauchi", precision: nil
    t.boolean "ng_confirm_mail", default: false
    t.string "corresponding_method"
    t.integer "identification_type"
    t.string "driving_licenses_number", limit: 12
    t.string "insurance_certificate_number"
    t.string "passport_number", limit: 11
    t.string "residence_card_number"
    t.string "special_permanent_resident_certificate_number"
    t.integer "signup_account_id"
    t.integer "lock_version", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["channel_id"], name: "index_customers_on_channel_id"
    t.index ["city_code"], name: "index_customers_on_city_code"
    t.index ["customer_foreigner_ng_type_detail_id"], name: "index_customers_on_customer_foreigner_ng_type_detaile_id"
    t.index ["customer_foreigner_ng_type_id"], name: "index_customers_on_customer_foreigner_ng_type_id"
    t.index ["email"], name: "index_customers_on_email"
    t.index ["email_contact"], name: "index_customers_on_email_contact"
    t.index ["email_mailmaga"], name: "index_customers_on_email_mailmaga"
    t.index ["email_mobile"], name: "index_customers_on_email_mobile"
    t.index ["name_kana_search"], name: "index_customers_on_name_kana_search"
    t.index ["name_search"], name: "index_customers_on_name_search"
    t.index ["phone"], name: "index_customers_on_phone"
    t.index ["pref_code"], name: "index_customers_on_pref_code"
    t.index ["signup_account_id"], name: "index_customers_on_signup_account_id"
  end

  create_table "daily_project_lock_errors", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "daily_project_lock_id"
    t.bigint "service_id"
    t.bigint "product_order_id"
    t.bigint "contract_id"
    t.bigint "customer_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.string "message"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["daily_project_lock_id"], name: "index_daily_project_lock_errors_on_daily_project_lock_id"
    t.index ["product_order_id"], name: "index_daily_project_lock_errors_on_product_order_id"
    t.index ["service_id"], name: "index_daily_project_lock_errors_on_service_id"
    t.index ["unit_id"], name: "index_daily_project_lock_errors_on_unit_id"
    t.index ["user_id"], name: "index_daily_project_lock_errors_on_user_id"
  end

  create_table "daily_project_locks", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "project_id"
    t.date "lock_date"
    t.datetime "lock_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["lock_date"], name: "index_daily_project_locks_on_lock_date"
    t.index ["project_id"], name: "index_daily_project_locks_on_project_id"
  end

  create_table "datechanges", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "staff_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.datetime "action_at", precision: nil
    t.text "memo"
    t.string "generate_type"
    t.string "customer_reason_type"
    t.string "staff_reason_type"
    t.string "status"
    t.string "customer_status"
    t.string "staff_status"
    t.string "sales_status"
    t.string "foreigner_status"
    t.string "loyal_status"
    t.string "post_status"
    t.string "result_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_datechanges_on_customer_id"
    t.index ["service_assign_id"], name: "index_datechanges_on_service_assign_id"
    t.index ["service_id"], name: "index_datechanges_on_service_id"
    t.index ["staff_id"], name: "index_datechanges_on_staff_id"
    t.index ["unit_id"], name: "index_datechanges_on_unit_id"
    t.index ["user_id"], name: "index_datechanges_on_user_id"
  end

  create_table "discount_type_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "discount_type_id"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["discount_type_id"], name: "index_discount_type_details_on_discount_type_id"
  end

  create_table "discount_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "employment_signs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.date "first_day"
    t.bigint "staff_id"
    t.integer "training_hourly_wage"
    t.integer "hourly_wage"
    t.string "prefectures"
    t.boolean "labor_approval", default: false
    t.boolean "hr_approval", default: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_abm_code_on__staff_id"
  end

  create_table "evaluation_categories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.string "score_type", null: false
    t.bigint "display_order", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "evaluation_items", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "evaluation_category_id", null: false
    t.bigint "display_order", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["evaluation_category_id"], name: "index_evaluation_item_on_evaluation_category_id"
  end

  create_table "evaluations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.bigint "staff_id"
    t.bigint "customer_id"
    t.integer "q1_score"
    t.integer "q2_score"
    t.integer "q3_score"
    t.integer "score"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_evaluations_on_customer_id"
    t.index ["service_assign_id"], name: "index_evaluations_on_service_assign_id", unique: true
    t.index ["staff_id"], name: "index_evaluations_on_staff_id"
  end

  create_table "exchange_objects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "fc_schedules", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "kind"
    t.integer "staff_num"
    t.bigint "house_area_id"
    t.date "date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "fcm_tokens", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "app_id"
    t.string "app_type"
    t.string "token"
    t.boolean "logouted"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["app_type", "app_id"], name: "index_fcm_tokens_on_app_type_and_app_id"
    t.index ["created_at"], name: "index_fcm_tokens_on_created_at"
    t.index ["token"], name: "index_fcm_tokens_on_token"
  end

  create_table "fh_precaution_conditions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.string "detail", null: false
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "fh_user_precaution_conditions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "unit_user_id"
    t.bigint "fh_precaution_condition_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "foreigner_employment_signs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "file"
    t.string "original_file_name"
    t.date "first_day"
    t.bigint "staff_id"
    t.bigint "staff_foreigner_residential_status_id"
    t.integer "monthly_pay"
    t.integer "hourly_wage"
    t.boolean "not_updatable", default: false
    t.boolean "reject_check", default: false
    t.text "reject_reason"
    t.text "not_updatable_reason"
    t.boolean "overseas_management_approval", default: false
    t.boolean "human_resources_development_approval", default: false
    t.boolean "overseas_management_department_chief_approval", default: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "friendlypoint_uses", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "friendlypoint_id"
    t.bigint "customer_id"
    t.bigint "service_id"
    t.bigint "product_order_id"
    t.integer "price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_friendlypoint_uses_on_customer_id"
    t.index ["friendlypoint_id"], name: "index_friendlypoint_uses_on_friendlypoint_id"
    t.index ["product_order_id"], name: "index_friendlypoint_uses_on_product_order_id"
    t.index ["service_id"], name: "index_friendlypoint_uses_on_service_id"
  end

  create_table "friendlypoints", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "service_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.integer "price"
    t.integer "balance_price"
    t.date "expire_at"
    t.bigint "bill_row_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_row_id"], name: "index_friendlypoints_on_bill_row_id"
    t.index ["customer_id"], name: "index_friendlypoints_on_customer_id"
    t.index ["service_id"], name: "index_friendlypoints_on_service_id"
  end

  create_table "good_voices", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "staff_id"
    t.bigint "unit_id"
    t.bigint "project_id"
    t.bigint "service_assign_id"
    t.string "title", limit: 200
    t.text "body"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_good_voices_on_customer_id"
    t.index ["deleted_at"], name: "index_good_voices_on_deleted_at"
    t.index ["project_id"], name: "index_good_voices_on_project_id"
    t.index ["service_assign_id"], name: "index_good_voices_on_service_assign_id"
    t.index ["staff_id"], name: "index_good_voices_on_staff_id"
    t.index ["unit_id"], name: "index_good_voices_on_unit_id"
  end

  create_table "google_calendar_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "add_fh_ok"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "google_calendars", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "user_id"
    t.string "available_type"
    t.datetime "work_from", precision: nil, null: false
    t.datetime "work_to", precision: nil, null: false
    t.bigint "service_assign_id"
    t.bigint "customer_inquiry_id"
    t.bigint "staff_schedule_spot_hope_id"
    t.bigint "customer_id"
    t.string "postal_code", limit: 7
    t.string "station_rail"
    t.bigint "google_calendar_type_id"
    t.bigint "bl_id"
    t.string "event_code"
    t.string "summary"
    t.string "location"
    t.text "description"
    t.datetime "calendar_updated", precision: nil
    t.integer "update_flg"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "hearingable_schedule_area_postcodes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code", limit: 3
    t.bigint "hearingable_schedule_area_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["hearingable_schedule_area_id"], name: "index_hearingable_schedule_areas_and_postcodes"
  end

  create_table "hearingable_schedule_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["unit_id"], name: "index_hearingable_schedule_areas_on_unit_id"
    t.index ["user_id"], name: "index_hearingable_schedule_areas_on_user_id"
  end

  create_table "hearingable_schedule_defaults", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "hearingable_schedule_area_id"
    t.integer "weekday_code"
    t.string "kind"
    t.integer "hearingable_num"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["hearingable_schedule_area_id", "weekday_code"], name: "index_hearingable_defaults_on_weekday_code"
  end

  create_table "hearingable_schedule_inputs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "hearingable_schedule_area_id"
    t.date "hearingable_date"
    t.string "kind"
    t.integer "hearingable_num"
    t.integer "hearined_num"
    t.integer "remain_num"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["hearingable_schedule_area_id", "hearingable_date"], name: "index_hearingable_schedule_inputs_on_weekday_hearingable_date"
  end

  create_table "hearingable_schedules", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "hearingable_schedule_area_id"
    t.datetime "hearingable_from", precision: nil
    t.integer "hearingable_num"
    t.integer "hearined_num"
    t.integer "remain_num"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["hearingable_schedule_area_id"], name: "index_hearingable_schedules_on_hearingable_schedule_area_id"
  end

  create_table "holidays", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.date "holiday_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "house_area_calculations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "house_area_id1"
    t.string "house_area_id2"
    t.datetime "start_at", precision: nil
    t.datetime "end_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["house_area_id1", "house_area_id2"], name: "index_house_area_calculations_on_house_area_id1"
    t.index ["house_area_id2", "house_area_id1"], name: "index_house_area_calculations_on_house_area_id2"
  end

  create_table "house_area_cities", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "house_area_id"
    t.string "city_code"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["city_code"], name: "index_house_area_cities_on_city_code"
    t.index ["house_area_id"], name: "index_house_area_cities_on_house_area_id"
  end

  create_table "house_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "pref_code"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["name"], name: "index_house_areas_on_name"
    t.index ["pref_code"], name: "index_house_areas_on_pref_code"
  end

  create_table "house_staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "service_assign_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "income_transfers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "smbc_code"
    t.string "account_number"
    t.string "client_code"
    t.bigint "customer_id"
    t.bigint "client_id"
    t.integer "price"
    t.string "income_bank_name"
    t.string "income_bank_branch_name"
    t.string "income_client_name"
    t.date "income_at"
    t.datetime "imported_at", precision: nil
    t.integer "balance_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["account_number", "smbc_code", "income_at"], name: "index_income_transfers_on_account_number", unique: true
    t.index ["client_code"], name: "index_income_transfers_on_client_code"
    t.index ["client_id"], name: "index_income_transfers_on_client_id"
    t.index ["customer_id"], name: "index_income_transfers_on_customer_id"
  end

  create_table "industries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "inquiry_methods", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "interview_questions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "interview_type_id"
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["interview_type_id"], name: "index_interview_question_on_interview_type_id"
  end

  create_table "interview_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "jobs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "key_station_rooms", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "key_station_facility_id", null: false
    t.string "station_name", null: false
    t.string "machine_no"
    t.string "slot_number", null: false
    t.string "status", null: false
    t.string "password", null: false
    t.text "memo"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_key_station_rooms_on_customer_id"
    t.index ["customer_workplace_id"], name: "index_key_station_rooms_on_customer_workplace_id"
  end

  create_table "key_station_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "key_station_id"
    t.string "line"
    t.string "station"
    t.text "memo"
    t.boolean "walkable", default: true, null: false
    t.integer "minute_to_station", default: 0, null: false
    t.integer "fee_to_station", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["key_station_id"], name: "index_key_station_routes_on_key_station_id"
    t.index ["station"], name: "index_key_station_routes_on_station"
  end

  create_table "key_stations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "position"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "file"
    t.string "original_file_name"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.integer "staff_minimum_hourly_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "key_storages", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "living_station_category_option_orders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "category_option_id", null: false
    t.bigint "living_station_menu_item_order_id", null: false
    t.integer "price", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["category_option_id"], name: "living_station_category_option_order_menu_id"
    t.index ["living_station_menu_item_order_id"], name: "living_station_category_option_order_order_id"
  end

  create_table "living_station_menu_item_orders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "menu_id", null: false
    t.bigint "living_station_order_id", null: false
    t.integer "price", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["living_station_order_id"], name: "living_station_menu_item_order_living_station_order_id"
    t.index ["menu_id"], name: "living_station_menu_item_order_menu_id"
  end

  create_table "living_station_menu_option_orders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "menu_option_id", null: false
    t.bigint "living_station_menu_item_order_id", null: false
    t.integer "price", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["living_station_menu_item_order_id"], name: "living_station_menu_option_order_order_id"
    t.index ["menu_option_id"], name: "living_station_menu_option_order_menu_id"
  end

  create_table "living_station_menu_questionnaires", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "living_station_menu_item_order_id", null: false
    t.bigint "questionnaire_id", null: false
    t.string "name", null: false
    t.string "answer"
    t.index ["living_station_menu_item_order_id"], name: "living_station_menu_questionnaires_menu_id"
    t.index ["questionnaire_id"], name: "living_station_menu_questionnaires_questionnaire_id"
  end

  create_table "living_station_orders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "parking_fee"
    t.datetime "start_date_time", precision: nil, null: false
    t.datetime "end_date_time", precision: nil, null: false
    t.float "discount_rate"
    t.integer "duration"
    t.integer "payment_method", null: false
    t.string "coupon_code"
    t.integer "coupon_discount"
    t.integer "subtotal"
    t.integer "total_amount"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "mail_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "ses_template_code"
    t.string "kind"
    t.string "code"
    t.boolean "editable", default: false
    t.boolean "send_zendesk", default: false
    t.string "subject"
    t.text "content"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["name"], name: "index_mail_templates_on_name"
    t.index ["ses_template_code"], name: "index_mail_templates_on_ses_template_code"
  end

  create_table "mansion_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.text "memo"
    t.bigint "unit_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "mansion_buildings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "mansion_id"
    t.string "name"
    t.string "name_kana"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.integer "house_number"
    t.integer "floor_number"
    t.integer "under_floor_number"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["mansion_id"], name: "index_mansion_buildings_on_mansion_id"
    t.index ["name"], name: "index_mansion_buildings_on_name"
    t.index ["name_kana"], name: "index_mansion_buildings_on_name_kana"
  end

  create_table "mansion_floors", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "mansion_building_id"
    t.string "name"
    t.integer "floor_number"
    t.integer "house_number"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["mansion_building_id"], name: "index_mansion_floors_on_mansion_building_id"
  end

  create_table "mansion_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "mansion_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["mansion_id"], name: "index_mansion_informations_on_mansion_id"
  end

  create_table "mansion_rooms", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "mansion_floor_id"
    t.string "name"
    t.integer "room_no"
    t.integer "status"
    t.integer "sales_status"
    t.string "memo", limit: 1000, default: "", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["mansion_floor_id"], name: "index_mansion_rooms_on_mansion_floor_id"
  end

  create_table "mansion_staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "mansion_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["mansion_id"], name: "index_mansion_staffs_on_mansion_id"
    t.index ["staff_id"], name: "index_mansion_staffs_on_staff_id"
  end

  create_table "mansions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "mansion_area_id"
    t.string "kind"
    t.string "name"
    t.string "name_kana"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.integer "house_number"
    t.text "memo"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["city_code"], name: "index_mansions_on_city_code"
    t.index ["name"], name: "index_mansions_on_name_search"
    t.index ["name_kana"], name: "index_mansions_on_name_kana_search"
    t.index ["pref_code"], name: "index_mansions_on_pref_code"
  end

  create_table "matching_distance_calc_datas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "customer_workplace_id"
    t.integer "creator_id"
    t.datetime "created_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_matching_distance_calc_datas_on_customer_workplace_id"
    t.index ["staff_id"], name: "index_matching_distance_calc_datas_on_staff_id"
  end

  create_table "matching_distance_staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "customer_workplace_id"
    t.integer "minute"
    t.integer "distance"
    t.integer "fare"
    t.integer "creator_id"
    t.datetime "created_at", precision: nil
    t.index ["customer_workplace_id"], name: "index_matching_distance_staffs_on_customer_workplace_id"
    t.index ["staff_id"], name: "index_matching_distance_staffs_on_customer_staff_id"
  end

  create_table "matching_limits", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "matching_ng_conditions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "measure_categories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "kind"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "measure_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "status"
    t.integer "alliance_id"
    t.integer "user_id"
    t.integer "measure_id"
    t.integer "measure_categorie_id"
    t.date "work_from"
    t.date "work_to"
    t.integer "prospect"
    t.integer "target"
    t.integer "achievement"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "measures", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "alliance_aggregate_id"
    t.integer "alliance_id"
    t.integer "campaign_id"
    t.integer "project_id"
    t.date "work_from"
    t.date "work_to"
    t.integer "prospect"
    t.integer "target"
    t.integer "achievement"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "menu_contract_adds", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "addable_menu_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["addable_menu_id"], name: "index_menu_contract_adds_on_addable_menu_id"
    t.index ["menu_id"], name: "index_menu_contract_adds_on_menu_id"
  end

  create_table "menu_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "menu_id"
    t.string "file"
    t.string "label"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "menu_option_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "menu_option_id", null: false
    t.integer "menu_id", null: false
    t.boolean "required", default: false, null: false
    t.integer "display_order", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["display_order"], name: "index_menu_option_details_on_display_order", unique: true
    t.index ["menu_id"], name: "index_menu_option_details_on_menu_id"
    t.index ["menu_option_id"], name: "index_menu_option_details_on_menu_option_id"
  end

  create_table "menu_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.bigint "option_menu_id", null: false
    t.boolean "required", default: false, null: false
    t.integer "display_order", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["display_order"], name: "index_menu_option_on_display_order", unique: true
    t.index ["menu_id"], name: "index_menu_option_on_menu_id"
    t.index ["option_menu_id"], name: "index_menu_option_on_option_menu_id"
  end

  create_table "menu_questionnaire_answers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_inquiry_id"
    t.bigint "customer_inquiry_menu_id"
    t.string "name"
    t.string "answer"
    t.bigint "service_menu_id"
    t.bigint "questionnaire_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_inquiry_id"], name: "index_menu_questionnaire_answer_on_customer_inquiry_id"
    t.index ["customer_inquiry_menu_id"], name: "index_menu_questionnaire_answer_on_customer_inquiry_menu_id"
    t.index ["questionnaire_id"], name: "index_menu_questionnaire_answer_on_questionnaire_id"
    t.index ["service_menu_id"], name: "index_menu_questionnaire_answer_on_service_menu_id"
  end

  create_table "menu_special_skills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "special_skill_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["menu_id"], name: "index_menu_special_skills_on_menu_id"
    t.index ["special_skill_id"], name: "index_menu_special_skills_on_special_skill_id"
  end

  create_table "menu_works", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "work_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["menu_id"], name: "index_menu_works_on_menu_id"
    t.index ["work_id"], name: "index_menu_works_on_work_id"
  end

  create_table "menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.bigint "alliance_id"
    t.bigint "term_type_id"
    t.bigint "message_information_template_id"
    t.bigint "project_id"
    t.boolean "baby", default: false, null: false
    t.boolean "in_company_schedule", default: false, null: false
    t.bigint "base_menu_id"
    t.bigint "bears_menu_id"
    t.boolean "optioned", default: false, null: false
    t.boolean "hour_charged", default: false, null: false
    t.boolean "packed", default: false, null: false
    t.boolean "packmenu", default: false, null: false
    t.boolean "estimate_needed", default: false, null: false
    t.integer "minimum_minutes"
    t.integer "service_num"
    t.integer "staff_num"
    t.integer "price"
    t.integer "minute_unit"
    t.integer "admission_price"
    t.integer "yearly_price"
    t.integer "yearly2_price"
    t.float "discount_rate", default: 0.0
    t.text "discount_memo"
    t.boolean "parking_expense_billed", default: false, null: false
    t.integer "transport_expense"
    t.integer "extend_price"
    t.integer "extend_minute"
    t.boolean "order_unlimited", default: false, null: false
    t.boolean "no_salary", default: false, null: false
    t.boolean "off_extra_billed"
    t.integer "off_extra_morning_hour"
    t.integer "off_extra_evening_hour"
    t.boolean "holiday_extra_billed"
    t.integer "salaryup"
    t.text "memo"
    t.text "explain_to_staff"
    t.boolean "staff_fixed"
    t.boolean "absent_visitable"
    t.boolean "key_depositable"
    t.boolean "customer_visible"
    t.string "name_to_customer"
    t.text "explain_to_customer"
    t.text "caution_to_customer"
    t.string "app_type"
    t.string "file"
    t.string "original_file_name"
    t.boolean "loyalty_displayable"
    t.boolean "no_hearing", default: false
    t.boolean "recommendation", default: false
    t.boolean "royal_service", default: false
    t.boolean "none_visiable"
    t.integer "order_num"
    t.integer "display_order"
    t.boolean "absolute_arrangement", default: false, null: false
    t.bigint "category_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_menus_on_alliance_id"
    t.index ["base_menu_id"], name: "index_menus_on_base_menu_id"
    t.index ["bears_menu_id"], name: "index_menus_on_bears_menu_id"
    t.index ["category_id"], name: "index_menus_on_category_id"
    t.index ["project_id"], name: "index_menus_on_project_id"
    t.index ["term_type_id"], name: "index_menus_on_term_type_id"
  end

  create_table "message_information_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "information_type"
    t.string "name"
    t.text "body"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "message_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.datetime "action_at", precision: nil
    t.string "generate_type"
    t.bigint "service_id"
    t.string "service_specification"
    t.text "memo"
    t.text "bears_memo"
    t.datetime "confirmed_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_message_informations_on_customer_id"
    t.index ["service_id"], name: "index_message_informations_service_id"
  end

  create_table "monthly_alliance_locks", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "lock_month"
    t.datetime "lock_at", precision: nil
    t.datetime "last_created_at", precision: nil
    t.boolean "all_days_created"
    t.string "closing_date"
    t.string "lock_from"
    t.string "lock_to"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["lock_month"], name: "index_monthly_alliance_locks_on_lock_month"
  end

  create_table "monthly_evaluation_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "monthly_evaluation_id", null: false
    t.integer "evaluation_item_id", null: false
    t.text "goal_setting"
    t.integer "wait"
    t.integer "subjective_evaluation"
    t.text "subjective_comment"
    t.integer "primary_evaluation"
    t.text "primary_comment"
    t.integer "secondary_evaluation"
    t.text "secondary_comment"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["evaluation_item_id"], name: "index_monthly_evaluation_on_evaluation_item_id"
    t.index ["monthly_evaluation_id"], name: "index_monthly_evaluation_on_monthly_evaluation_id"
  end

  create_table "monthly_evaluations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "user_id"
    t.date "evaluation_month"
    t.string "status", default: "target_preference"
    t.integer "primary_evaluator_id"
    t.string "primary_evaluator_status"
    t.integer "secondary_evaluator_id"
    t.string "secondary_evaluator_status"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["primary_evaluator_id"], name: "index_monthly_evaluation_on_primary_evaluator_id"
    t.index ["secondary_evaluator_id"], name: "index_monthly_evaluation_on_secondary_evaluator_id"
    t.index ["user_id"], name: "index_monthly_evaluation_on_user_id"
  end

  create_table "monthly_locks", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "lock_month"
    t.datetime "lock_from", precision: nil
    t.datetime "lock_to", precision: nil
    t.datetime "lock_at", precision: nil
    t.datetime "last_created_at", precision: nil
    t.boolean "all_days_created"
    t.string "closing_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["lock_month"], name: "index_monthly_locks_on_lock_month"
  end

  create_table "my2_contact_menu_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "my2_contact_id"
    t.bigint "menu_id"
    t.integer "order_num"
    t.integer "service_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["menu_id"], name: "index_menu_id"
    t.index ["my2_contact_id"], name: "index_my2_contact_id"
  end

  create_table "my2_contact_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "my2_contact_id"
    t.bigint "menu_id"
    t.integer "order_num"
    t.integer "service_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["menu_id"], name: "index_menu_id"
    t.index ["my2_contact_id"], name: "index_my2_contact_id"
  end

  create_table "my2_contacts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "customer_web_contact_id"
    t.bigint "customer_alliance_id"
    t.bigint "alliance_id"
    t.bigint "aircon_type_id"
    t.string "original_type", default: "normal", null: false
    t.bigint "project_id"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "hour_charged"
    t.bigint "hourly_menu_id"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.text "work_contents"
    t.boolean "third_party_information"
    t.integer "minutes"
    t.integer "rest_minutes"
    t.integer "staff_num"
    t.integer "total_price"
    t.integer "service_price"
    t.integer "admission_price"
    t.integer "yearly_price"
    t.integer "yearly2_price"
    t.integer "transport_expense"
    t.integer "discount_price"
    t.text "discount_memo"
    t.integer "additional_price"
    t.text "additional_memo"
    t.integer "alliance_discount_price"
    t.string "campaign_code"
    t.string "code"
    t.bigint "campaign_id"
    t.integer "campaign_discount_price"
    t.bigint "campaign_busy_id"
    t.integer "campaign_busy_add_price"
    t.integer "off_extra_additional_price"
    t.integer "lock_version", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["aircon_type_id"], name: "index_my2_contact_on_aircon_type_id"
    t.index ["alliance_id"], name: "index_my2_contact_on_alliance_id"
    t.index ["customer_id"], name: "index_my2_contact_on_customer_id"
    t.index ["customer_workplace_id"], name: "index_my2_contact_on_workplace_id"
    t.index ["hourly_menu_id"], name: "index_my2_contact_on_hourly_menu_id"
    t.index ["project_id"], name: "index_my2_contact_on_project_id"
    t.index ["staff_id"], name: "index_my2_contact_on_staff_id"
    t.index ["term_type_id"], name: "index_my2_contact_on_term_type_id"
  end

  create_table "ng_word_collections", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "ng_word"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "notification_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "notification_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["notification_id"], name: "index_notification_images_on_notification_id"
  end

  create_table "notification_members", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "notification_id"
    t.bigint "customer_id"
    t.boolean "api_requested"
    t.bigint "sourceable_id"
    t.string "sourceable_type"
    t.bigint "notification_template_id"
    t.string "title"
    t.string "push_message"
    t.text "contents"
    t.string "deep_link"
    t.datetime "pushed_at", precision: nil
    t.datetime "read_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_notification_members_on_customer_id"
    t.index ["notification_id"], name: "index_notification_members_on_notification_id"
    t.index ["notification_template_id"], name: "index_notification_members_on_notification_template_id"
    t.index ["sourceable_type", "sourceable_id"], name: "index_notification_members_on_sourceable"
  end

  create_table "notification_staff_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "notification_staff_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["notification_staff_id"], name: "index_notification_staff_images_on_notification_staff_id"
  end

  create_table "notification_staff_members", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "notification_staff_id"
    t.bigint "staff_id"
    t.boolean "api_requested"
    t.bigint "sourceable_id"
    t.string "sourceable_type"
    t.bigint "notification_template_id"
    t.string "title"
    t.string "push_message"
    t.text "contents"
    t.string "deep_link"
    t.datetime "pushed_at", precision: nil
    t.datetime "read_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["notification_staff_id"], name: "index_notification_staff_members_on_notification_staff_id"
    t.index ["notification_template_id"], name: "index_notification_staff_members_on_notification_template_id"
    t.index ["sourceable_type", "sourceable_id"], name: "index_notification_staff_members_on_sourceable"
    t.index ["staff_id"], name: "index_notification_staff_members_on_staff_id"
  end

  create_table "notification_staff_projects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "notification_staff_id"
    t.bigint "project_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["notification_staff_id"], name: "index_notification_staff_projects_on_notification_staff_id"
    t.index ["project_id"], name: "index_notification_staff_projects_on_project_id"
  end

  create_table "notification_staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "title", null: false
    t.text "contents", null: false
    t.boolean "active", default: false, null: false
    t.string "category", default: "notice", null: false
    t.string "push_message"
    t.string "deep_link"
    t.datetime "pushed_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "notification_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.string "push_message"
    t.text "contents"
    t.string "deep_link"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["code"], name: "index_notification_templates_on_code", unique: true
  end

  create_table "notification_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.text "contents"
    t.string "category"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "notification_users", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "title", null: false
    t.text "contents", null: false
    t.integer "notification_type_id"
    t.string "url"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "notifications", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "title", null: false
    t.text "contents", null: false
    t.boolean "active", default: false, null: false
    t.string "category", default: "notice", null: false
    t.string "target", default: "mybears", null: false
    t.string "url"
    t.string "push_message"
    t.string "deep_link"
    t.datetime "pushed_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "np_credit_transactions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "customer_np_credit_information_id"
    t.string "np_credit_company_id"
    t.string "shop_transaction_code"
    t.date "service_month"
    t.string "status"
    t.string "order_status"
    t.datetime "order_ok_at", precision: nil
    t.text "error_no"
    t.text "error_contents"
    t.integer "transaction_price"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_np_credit_transactions_on_customer_id"
    t.index ["customer_np_credit_information_id"], name: "index_transactions_on_customer_np_credit_information_id"
    t.index ["np_credit_company_id"], name: "index_np_credit_transactions_on_np_credit_company_id"
  end

  create_table "np_imports", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "import_month"
    t.date "service_month"
    t.string "kind"
    t.string "expense_kind"
    t.bigint "np_transaction_id"
    t.bigint "bill_row_id"
    t.integer "transaction_price"
    t.integer "fee_price"
    t.integer "other_price"
    t.datetime "imported_at", precision: nil
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_row_id"], name: "index_np_imports_on_bill_row_id"
    t.index ["import_month", "expense_kind", "np_transaction_id"], name: "index_np_imports_on_import_month", unique: true
    t.index ["np_transaction_id"], name: "index_np_imports_on_np_transaction_id"
    t.index ["service_month"], name: "index_np_imports_on_service_month"
  end

  create_table "np_summary_transactions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "customer_np_summary_information_id"
    t.string "shop_transaction_code"
    t.date "service_month"
    t.string "order_status"
    t.string "deliver_status"
    t.text "error_no"
    t.text "error_contents"
    t.datetime "order_ok_at", precision: nil
    t.datetime "deliver_ok_at", precision: nil
    t.integer "transaction_price"
    t.integer "np_fee"
    t.integer "sales_price"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_np_summary_transactions_on_customer_id"
    t.index ["customer_np_summary_information_id"], name: "index_transactions_on_customer_np_summary_information_id"
  end

  create_table "np_transactions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "product_order_id"
    t.string "shop_transaction_code"
    t.string "order_status"
    t.string "deliver_status"
    t.text "error_no"
    t.text "error_contents"
    t.datetime "order_ok_at", precision: nil
    t.datetime "deliver_ok_at", precision: nil
    t.integer "transaction_price"
    t.integer "np_fee"
    t.integer "sales_price"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_id"], name: "index_np_transactions_on_service_id"
  end

  create_table "optimal_service_assigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.bigint "staff_id"
    t.string "assign_status", default: "confirming"
    t.bigint "customer_level"
    t.bigint "staff_level"
    t.string "meridiem"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_optimal_service_assign_on_service_assign_id"
    t.index ["staff_id"], name: "index_optimal_service_assign_on_staff_id"
  end

  create_table "out_message_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "partner_admission_fee_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "account_title_id"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["account_title_id"], name: "index_partner_admission_fee_types_on_account_title_id"
    t.index ["deleted_at"], name: "index_partner_admission_fee_types_on_deleted_at"
  end

  create_table "partner_admission_fees", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "partner_admission_fee_type_id"
    t.bigint "partner_id"
    t.integer "fee"
    t.date "charge_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["partner_admission_fee_type_id"], name: "index_partner_admission_fees_on_partner_admission_fee_type_id"
    t.index ["partner_id"], name: "index_partner_admission_fees_on_partner_id"
  end

  create_table "partner_document_receiveds", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "partner_id"
    t.bigint "partner_document_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["partner_document_id"], name: "index_partner_document_receiveds_on_partner_document_id"
    t.index ["partner_id"], name: "index_partner_document_receiveds_on_partner_id"
  end

  create_table "partner_documents", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "file"
    t.string "original_file_name"
    t.boolean "franchised"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "partner_ereas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "slack_webhook"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "partner_loyalty_fee_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "account_title_id"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["account_title_id"], name: "index_partner_loyalty_fee_types_on_account_title_id"
  end

  create_table "partner_loyalty_fees", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "partner_loyalty_fee_type_id"
    t.bigint "partner_id"
    t.integer "fee"
    t.date "charge_start_at"
    t.date "charge_end_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["charge_end_at"], name: "index_partner_loyalty_fees_on_charge_end_at"
    t.index ["charge_start_at"], name: "index_partner_loyalty_fees_on_charge_start_at"
    t.index ["partner_id"], name: "index_partner_loyalty_fees_on_partner_id"
    t.index ["partner_loyalty_fee_type_id"], name: "index_partner_loyalty_fees_on_partner_loyalty_fee_type_id"
  end

  create_table "partner_menu_order_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "partner_menu_order_id"
    t.bigint "partner_menu_id"
    t.integer "order_num"
    t.integer "price"
    t.integer "cost"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["partner_menu_id"], name: "index_partner_menu_order_details_on_partner_menu_id"
    t.index ["partner_menu_order_id"], name: "index_partner_menu_order_details_on_partner_menu_order_id"
  end

  create_table "partner_menu_orders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "partner_id", null: false
    t.integer "price"
    t.integer "cost"
    t.datetime "finished_at", precision: nil
    t.text "memo"
    t.bigint "bill_row_id"
    t.date "ordered_date"
    t.date "order_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_row_id"], name: "index_partner_menu_orders_on_bill_row_id"
    t.index ["partner_id"], name: "index_partner_menu_orders_on_partner_id"
  end

  create_table "partner_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "category"
    t.integer "price"
    t.integer "cost"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "partners", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "original_id"
    t.integer "partner_erea_id"
    t.boolean "franchised"
    t.boolean "flagship_shop"
    t.string "status"
    t.string "name", null: false
    t.string "shop_name"
    t.string "name_kana"
    t.string "president_name"
    t.string "associate_department"
    t.string "associate_post"
    t.string "associate_name"
    t.string "associate_name_kana"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone", limit: 11
    t.string "phone_mobile", limit: 11
    t.string "fax", limit: 10
    t.string "email"
    t.string "client_code"
    t.bigint "smbc_transfer_account_id"
    t.string "bank_code", limit: 4
    t.string "bank_branch_code", limit: 3
    t.integer "bank_account_type"
    t.string "bank_account_number"
    t.string "bank_account_name", limit: 100
    t.text "memo"
    t.boolean "documents_received"
    t.datetime "contract_start", precision: nil
    t.datetime "contract_end", precision: nil
    t.string "dashboard_address"
    t.string "customer_list_address"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["email"], name: "index_partners_on_email"
    t.index ["partner_erea_id"], name: "index_partners_on_partner_erea_id"
  end

  create_table "pay_fix_salaries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "pay_month"
    t.date "pay_date"
    t.datetime "confirm_limit_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["pay_month"], name: "index_fix_forcast_salaries_on_pay_month"
  end

  create_table "pay_fix_salary_rows", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "pay_fix_salary_id"
    t.bigint "staff_id"
    t.string "basic_price"
    t.string "basic_hourly_price"
    t.string "overtime_price"
    t.string "tax_included_price"
    t.string "tax_excluded_price"
    t.string "absence_price"
    t.string "transport_expense"
    t.string "work_day_num"
    t.string "work_hour_num"
    t.string "work_hour_num2"
    t.string "work_hour_num3"
    t.string "vacation_day_num"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["pay_fix_salary_id"], name: "index_pay_fix_salary_rows_on_pay_fix_salary_id"
    t.index ["staff_id"], name: "index_pay_fix_salary_rows_on_staff_id"
  end

  create_table "pay_forcast_salaries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "pay_month"
    t.bigint "partner_id"
    t.bigint "staff_id"
    t.string "staff_affiliation_code"
    t.integer "pay_group"
    t.string "salary_type"
    t.date "first_work_at"
    t.integer "work_month_num"
    t.integer "work_day_num"
    t.integer "work_minutes"
    t.integer "salaryup"
    t.integer "off_extra_minutes"
    t.integer "exceed_minutes"
    t.integer "training_minutes"
    t.integer "other_minutes"
    t.integer "transport_minutes"
    t.integer "advertisement_minutes"
    t.decimal "vacation_days", precision: 3, scale: 1
    t.integer "vacation_minutes"
    t.integer "salary_price"
    t.integer "advance_price"
    t.integer "transport_expense"
    t.integer "early_fault_num"
    t.integer "late_fault_num"
    t.integer "absent_fault_num"
    t.integer "hourly_wage_price"
    t.integer "training_wage_price"
    t.integer "transport_wage_price"
    t.integer "work_price"
    t.integer "off_extra_price"
    t.integer "exceed_price"
    t.integer "training_price"
    t.integer "other_price"
    t.integer "transport_price"
    t.integer "vacation_price"
    t.integer "adjust_price"
    t.integer "adjust_tax_price"
    t.integer "insurance_price"
    t.integer "sales_price"
    t.integer "loyalty_price"
    t.integer "admission_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["partner_id"], name: "index_pay_forcast_salaries_on_partner_id"
    t.index ["pay_month"], name: "index_pay_forcast_salaries_on_pay_month"
    t.index ["staff_id"], name: "index_pay_forcast_salaries_on_staff_id"
  end

  create_table "pay_forcast_salary_rows", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "pay_forcast_salary_id"
    t.date "pay_month"
    t.bigint "partner_id"
    t.bigint "staff_id"
    t.bigint "customer_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.string "kind"
    t.string "salary_type"
    t.boolean "franchised"
    t.string "service_type"
    t.bigint "service_assign_id"
    t.bigint "staff_training_assign_id"
    t.bigint "staff_other_work_id"
    t.bigint "staff_vacation_use_id"
    t.bigint "staff_additional_payment_id"
    t.bigint "partner_admission_fee_id"
    t.bigint "partner_loyalty_fee_id"
    t.integer "work_minutes"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.integer "salaryup"
    t.integer "off_extra_minutes"
    t.integer "exceed_minutes"
    t.integer "transport_minutes"
    t.text "summary"
    t.integer "salary_price"
    t.integer "advance_price"
    t.integer "transport_expense"
    t.integer "transport_go_expense"
    t.integer "transport_back_expense"
    t.integer "sales_price"
    t.integer "loyalty_price"
    t.integer "admission_price"
    t.boolean "early_fault"
    t.boolean "late_fault"
    t.boolean "absent_fault"
    t.decimal "vacation_days", precision: 3, scale: 1
    t.integer "vacation_minutes"
    t.integer "adjust_price"
    t.integer "adjust_tax_price"
    t.integer "insurance_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_pay_forcast_salary_rows_on_contract_id"
    t.index ["customer_id"], name: "index_pay_forcast_salary_rows_on_customer_id"
    t.index ["partner_id"], name: "index_pay_forcast_salary_rows_on_partner_id"
    t.index ["pay_forcast_salary_id"], name: "index_pay_forcast_salary_rows_on_pay_forcast_salary_id"
    t.index ["pay_month"], name: "index_pay_forcast_salary_rows_on_pay_month"
    t.index ["project_id"], name: "index_pay_forcast_salary_rows_on_project_id"
    t.index ["service_id"], name: "index_pay_forcast_salary_rows_on_service_id"
    t.index ["staff_id"], name: "index_pay_forcast_salary_rows_on_staff_id"
  end

  create_table "pay_methods", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.boolean "repeated"
    t.boolean "spot"
    t.boolean "bill_needed"
    t.boolean "receipt_need"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "pay_salaries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "pay_month"
    t.bigint "partner_id"
    t.bigint "staff_id"
    t.string "staff_affiliation_code"
    t.integer "pay_group"
    t.string "salary_type"
    t.date "first_work_at"
    t.integer "work_month_num"
    t.integer "work_day_num"
    t.integer "work_minutes"
    t.integer "salaryup"
    t.integer "off_extra_minutes"
    t.integer "exceed_minutes"
    t.integer "training_minutes"
    t.integer "other_minutes"
    t.integer "transport_minutes"
    t.integer "advertisement_minutes"
    t.decimal "vacation_days", precision: 3, scale: 1
    t.integer "vacation_minutes"
    t.integer "salary_price"
    t.integer "advance_price"
    t.integer "transport_expense"
    t.integer "early_fault_num"
    t.integer "late_fault_num"
    t.integer "absent_fault_num"
    t.integer "hourly_wage_price"
    t.integer "training_wage_price"
    t.integer "transport_wage_price"
    t.integer "work_price"
    t.integer "off_extra_price"
    t.integer "exceed_price"
    t.integer "training_price"
    t.integer "other_price"
    t.integer "transport_price"
    t.integer "vacation_price"
    t.integer "adjust_price"
    t.integer "adjust_tax_price"
    t.integer "insurance_price"
    t.integer "sales_price"
    t.boolean "approval_avilable", default: false, null: false
    t.integer "loyalty_price"
    t.integer "admission_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["partner_id"], name: "index_pay_salaries_on_partner_id"
    t.index ["pay_month"], name: "index_pay_salaries_on_pay_month"
    t.index ["staff_id"], name: "index_pay_salaries_on_staff_id"
  end

  create_table "pay_salary_rows", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "pay_salary_id"
    t.date "pay_month"
    t.bigint "partner_id"
    t.bigint "staff_id"
    t.bigint "customer_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.string "kind"
    t.string "service_type"
    t.string "salary_type"
    t.boolean "franchised"
    t.bigint "service_assign_id"
    t.bigint "staff_training_assign_id"
    t.bigint "staff_other_work_id"
    t.bigint "staff_vacation_use_id"
    t.bigint "staff_additional_payment_id"
    t.bigint "partner_admission_fee_id"
    t.bigint "partner_loyalty_fee_id"
    t.integer "work_minutes"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.integer "salaryup"
    t.integer "off_extra_minutes"
    t.integer "exceed_minutes"
    t.integer "transport_minutes"
    t.text "summary"
    t.integer "salary_price"
    t.integer "advance_price"
    t.integer "transport_expense"
    t.integer "transport_go_expense"
    t.integer "transport_back_expense"
    t.integer "sales_price"
    t.integer "loyalty_price"
    t.integer "admission_price"
    t.boolean "early_fault"
    t.boolean "late_fault"
    t.boolean "absent_fault"
    t.decimal "vacation_days", precision: 3, scale: 1
    t.integer "vacation_minutes"
    t.integer "adjust_price"
    t.integer "adjust_tax_price"
    t.integer "insurance_price"
    t.text "memo"
    t.integer "sales"
    t.integer "cost"
    t.integer "profit"
    t.float "profit_rate"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_pay_salary_rows_on_contract_id"
    t.index ["customer_id"], name: "index_pay_salary_rows_on_customer_id"
    t.index ["partner_id"], name: "index_pay_salary_rows_on_partner_id"
    t.index ["pay_month"], name: "index_pay_salary_rows_on_pay_month"
    t.index ["pay_salary_id"], name: "index_pay_salary_rows_on_pay_salary_id"
    t.index ["project_id"], name: "index_pay_salary_rows_on_project_id"
    t.index ["service_id"], name: "index_pay_salary_rows_on_service_id"
    t.index ["staff_id"], name: "index_pay_salary_rows_on_staff_id"
  end

  create_table "postal_code2_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "postal_code1"
    t.string "postal_code2"
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["postal_code1", "postal_code2"], name: "index_postal_code2_routes_on_postal_code1", unique: true
  end

  create_table "postal_code3_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "postal_code1"
    t.string "postal_code2"
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["postal_code1"], name: "index_postal_code3_routes_on_postal_code1"
    t.index ["postal_code2"], name: "index_postal_code3_routes_on_postal_code2"
  end

  create_table "postal_code_reachables0", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables0_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables0_idx2"
  end

  create_table "postal_code_reachables1", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables1_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables1_idx2"
  end

  create_table "postal_code_reachables10", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables10_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables10_idx2"
  end

  create_table "postal_code_reachables11", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables11_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables11_idx2"
  end

  create_table "postal_code_reachables12", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables12_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables12_idx2"
  end

  create_table "postal_code_reachables13", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables13_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables13_idx2"
  end

  create_table "postal_code_reachables14", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables14_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables14_idx2"
  end

  create_table "postal_code_reachables15", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables15_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables15_idx2"
  end

  create_table "postal_code_reachables16", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables16_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables16_idx2"
  end

  create_table "postal_code_reachables17", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables17_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables17_idx2"
  end

  create_table "postal_code_reachables18", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables18_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables18_idx2"
  end

  create_table "postal_code_reachables19", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables19_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables19_idx2"
  end

  create_table "postal_code_reachables2", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables2_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables2_idx2"
  end

  create_table "postal_code_reachables20", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables20_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables20_idx2"
  end

  create_table "postal_code_reachables21", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables21_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables21_idx2"
  end

  create_table "postal_code_reachables22", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables22_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables22_idx2"
  end

  create_table "postal_code_reachables23", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables23_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables23_idx2"
  end

  create_table "postal_code_reachables24", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables24_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables24_idx2"
  end

  create_table "postal_code_reachables25", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables25_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables25_idx2"
  end

  create_table "postal_code_reachables26", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables26_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables26_idx2"
  end

  create_table "postal_code_reachables27", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables27_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables27_idx2"
  end

  create_table "postal_code_reachables28", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables28_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables28_idx2"
  end

  create_table "postal_code_reachables29", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables29_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables29_idx2"
  end

  create_table "postal_code_reachables3", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables3_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables3_idx2"
  end

  create_table "postal_code_reachables30", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables30_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables30_idx2"
  end

  create_table "postal_code_reachables31", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables31_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables31_idx2"
  end

  create_table "postal_code_reachables32", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables32_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables32_idx2"
  end

  create_table "postal_code_reachables33", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables33_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables33_idx2"
  end

  create_table "postal_code_reachables34", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables34_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables34_idx2"
  end

  create_table "postal_code_reachables35", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables35_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables35_idx2"
  end

  create_table "postal_code_reachables36", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables36_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables36_idx2"
  end

  create_table "postal_code_reachables37", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables37_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables37_idx2"
  end

  create_table "postal_code_reachables38", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables38_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables38_idx2"
  end

  create_table "postal_code_reachables39", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables39_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables39_idx2"
  end

  create_table "postal_code_reachables4", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables4_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables4_idx2"
  end

  create_table "postal_code_reachables40", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables40_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables40_idx2"
  end

  create_table "postal_code_reachables41", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables41_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables41_idx2"
  end

  create_table "postal_code_reachables42", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables42_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables42_idx2"
  end

  create_table "postal_code_reachables43", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables43_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables43_idx2"
  end

  create_table "postal_code_reachables44", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables44_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables44_idx2"
  end

  create_table "postal_code_reachables45", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables45_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables45_idx2"
  end

  create_table "postal_code_reachables46", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables46_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables46_idx2"
  end

  create_table "postal_code_reachables47", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables47_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables47_idx2"
  end

  create_table "postal_code_reachables48", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables48_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables48_idx2"
  end

  create_table "postal_code_reachables49", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables49_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables49_idx2"
  end

  create_table "postal_code_reachables5", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables5_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables5_idx2"
  end

  create_table "postal_code_reachables50", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables50_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables50_idx2"
  end

  create_table "postal_code_reachables51", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables51_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables51_idx2"
  end

  create_table "postal_code_reachables52", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables52_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables52_idx2"
  end

  create_table "postal_code_reachables53", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables53_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables53_idx2"
  end

  create_table "postal_code_reachables54", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables54_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables54_idx2"
  end

  create_table "postal_code_reachables55", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables55_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables55_idx2"
  end

  create_table "postal_code_reachables56", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables56_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables56_idx2"
  end

  create_table "postal_code_reachables57", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables57_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables57_idx2"
  end

  create_table "postal_code_reachables58", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables58_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables58_idx2"
  end

  create_table "postal_code_reachables59", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables59_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables59_idx2"
  end

  create_table "postal_code_reachables6", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables6_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables6_idx2"
  end

  create_table "postal_code_reachables60", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables60_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables60_idx2"
  end

  create_table "postal_code_reachables61", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables61_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables61_idx2"
  end

  create_table "postal_code_reachables62", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables62_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables62_idx2"
  end

  create_table "postal_code_reachables63", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables63_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables63_idx2"
  end

  create_table "postal_code_reachables64", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables64_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables64_idx2"
  end

  create_table "postal_code_reachables65", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables65_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables65_idx2"
  end

  create_table "postal_code_reachables66", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables66_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables66_idx2"
  end

  create_table "postal_code_reachables67", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables67_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables67_idx2"
  end

  create_table "postal_code_reachables68", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables68_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables68_idx2"
  end

  create_table "postal_code_reachables69", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables69_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables69_idx2"
  end

  create_table "postal_code_reachables7", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables7_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables7_idx2"
  end

  create_table "postal_code_reachables70", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables70_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables70_idx2"
  end

  create_table "postal_code_reachables71", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables71_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables71_idx2"
  end

  create_table "postal_code_reachables72", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables72_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables72_idx2"
  end

  create_table "postal_code_reachables73", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables73_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables73_idx2"
  end

  create_table "postal_code_reachables74", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables74_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables74_idx2"
  end

  create_table "postal_code_reachables75", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables75_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables75_idx2"
  end

  create_table "postal_code_reachables76", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables76_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables76_idx2"
  end

  create_table "postal_code_reachables77", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables77_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables77_idx2"
  end

  create_table "postal_code_reachables78", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables78_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables78_idx2"
  end

  create_table "postal_code_reachables79", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables79_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables79_idx2"
  end

  create_table "postal_code_reachables8", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables8_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables8_idx2"
  end

  create_table "postal_code_reachables80", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables80_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables80_idx2"
  end

  create_table "postal_code_reachables81", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables81_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables81_idx2"
  end

  create_table "postal_code_reachables82", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables82_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables82_idx2"
  end

  create_table "postal_code_reachables83", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables83_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables83_idx2"
  end

  create_table "postal_code_reachables84", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables84_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables84_idx2"
  end

  create_table "postal_code_reachables85", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables85_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables85_idx2"
  end

  create_table "postal_code_reachables86", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables86_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables86_idx2"
  end

  create_table "postal_code_reachables87", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables87_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables87_idx2"
  end

  create_table "postal_code_reachables88", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables88_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables88_idx2"
  end

  create_table "postal_code_reachables89", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables89_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables89_idx2"
  end

  create_table "postal_code_reachables9", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables9_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables9_idx2"
  end

  create_table "postal_code_reachables90", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables90_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables90_idx2"
  end

  create_table "postal_code_reachables91", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables91_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables91_idx2"
  end

  create_table "postal_code_reachables92", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables92_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables92_idx2"
  end

  create_table "postal_code_reachables93", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables93_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables93_idx2"
  end

  create_table "postal_code_reachables94", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables94_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables94_idx2"
  end

  create_table "postal_code_reachables95", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables95_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables95_idx2"
  end

  create_table "postal_code_reachables96", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables96_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables96_idx2"
  end

  create_table "postal_code_reachables97", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables97_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables97_idx2"
  end

  create_table "postal_code_reachables98", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables98_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables98_idx2"
  end

  create_table "postal_code_reachables99", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.date "work_date"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_postal_code"
    t.string "reachable_postal_code"
    t.datetime "reachable_time", precision: nil
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_postal_code", "assignable_from", "assignable_to", "reachable_time"], name: "index_postal_code_reachables99_idx1"
    t.index ["staff_id", "work_date"], name: "index_postal_code_reachables99_idx2"
  end

  create_table "postal_code_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "postal_code1"
    t.string "postal_code2"
    t.integer "minutes"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["postal_code1", "postal_code2"], name: "index_postal_code_routes_on_postal_code1", unique: true
    t.index ["postal_code2"], name: "index_postal_code_routes_on_postal_code2"
  end

  create_table "postal_codes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "postal_code"
    t.string "pref_name"
    t.string "city_name"
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["city_code"], name: "index_postal_codes_on_city_code"
    t.index ["postal_code"], name: "index_postal_codes_on_postal_code", unique: true
  end

  create_table "posted_mails", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "sender_id"
    t.string "sender_type"
    t.string "sender_address"
    t.bigint "receiver_id"
    t.string "receiver_type"
    t.string "receiver_address"
    t.bigint "service_assign_id"
    t.string "subject"
    t.text "content"
    t.bigint "mail_template_id"
    t.text "mail_param"
    t.string "ses_message_num"
    t.datetime "ses_posted_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["created_at"], name: "index_posted_mails_on_created_at"
    t.index ["receiver_type", "receiver_id"], name: "index_posted_mails_on_receiver_type_and_receiver_id"
    t.index ["sender_type", "sender_id"], name: "index_posted_mails_on_sender_type_and_sender_id"
    t.index ["service_assign_id"], name: "index_posted_mails_on_service_assign_id"
  end

  create_table "prefs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", limit: 10, null: false
    t.string "name_kana", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["code"], name: "index_prefs_on_code", unique: true
  end

  create_table "product_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "product_id"
    t.string "file"
    t.string "label"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "product_order_corrections", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "product_order_id"
    t.date "correction_month"
    t.bigint "correction_bill_row_id"
    t.bigint "bill_row_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["correction_month"], name: "index_product_order_corrections_on_correction_bill_row_id"
    t.index ["product_order_id", "correction_month", "correction_bill_row_id", "deleted_at"], name: "product_order_corrections_on_service_month", unique: true
  end

  create_table "product_order_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "product_order_id"
    t.bigint "product_id"
    t.integer "order_num"
    t.integer "price"
    t.integer "cost"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["product_id"], name: "index_product_order_details_on_product_id"
    t.index ["product_order_id"], name: "index_product_order_details_on_product_order_id"
  end

  create_table "product_orders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "product_kind"
    t.integer "outsourcing_status"
    t.integer "buying_status"
    t.boolean "cancel_billable"
    t.boolean "cancel_payable"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.integer "price"
    t.integer "parking_expense"
    t.integer "cost"
    t.bigint "pay_method_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.bigint "np_summary_transaction_id"
    t.bigint "np_credit_transaction_id"
    t.integer "friendlypoint_price"
    t.integer "np_price"
    t.integer "prepay_price"
    t.integer "bank_collection_price"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.datetime "canceled_at", precision: nil
    t.text "canceled_reason"
    t.datetime "finished_at", precision: nil
    t.text "memo"
    t.bigint "product_supplier_id"
    t.bigint "staff_id"
    t.boolean "daily_locked", default: false, null: false
    t.bigint "bill_row_id"
    t.date "ordered_date"
    t.date "order_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["bill_row_id"], name: "index_product_orders_on_bill_row_id"
    t.index ["customer_id"], name: "index_product_orders_on_customer_id"
    t.index ["customer_np_credit_information_id"], name: "index_product_orders_on_customer_np_credit_information_id"
    t.index ["customer_np_summary_information_id"], name: "index_product_orders_on_customer_np_summary_information_id"
    t.index ["customer_workplace_id"], name: "index_product_orders_on_customer_workplace_id"
    t.index ["np_credit_transaction_id"], name: "index_product_orders_on_np_credit_transaction_id"
    t.index ["np_summary_transaction_id"], name: "index_product_orders_on_np_summary_transaction_id"
    t.index ["product_supplier_id"], name: "index_product_orders_on_product_supplier_id"
    t.index ["project_id"], name: "index_product_orders_on_project_id"
    t.index ["unit_id"], name: "index_product_orders_on_unit_id"
    t.index ["user_id"], name: "index_product_orders_on_user_id"
  end

  create_table "product_recommend_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "product_recommend_id"
    t.bigint "product_id"
    t.integer "order_num"
    t.integer "price"
    t.integer "cost"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["product_id"], name: "index_product_recommend_details_on_product_id"
    t.index ["product_recommend_id"], name: "index_product_recommend_details_on_product_recommend_id"
  end

  create_table "product_recommends", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "product_kind"
    t.integer "status"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "staff_service_report_id"
    t.integer "price"
    t.integer "parking_expense"
    t.integer "cost"
    t.integer "friendlypoint_price"
    t.bigint "product_supplier_id"
    t.text "recommend_memo"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_product_recommends_on_customer_id"
    t.index ["customer_workplace_id"], name: "index_product_recommends_on_customer_workplace_id"
    t.index ["project_id"], name: "index_product_recommends_on_project_id"
    t.index ["staff_service_report_id"], name: "index_product_recommends_on_staff_service_report_id"
    t.index ["unit_id"], name: "index_product_recommends_on_unit_id"
    t.index ["user_id"], name: "index_product_recommends_on_user_id"
  end

  create_table "product_suppliers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "company_name"
    t.string "company_name_kana"
    t.string "president_name"
    t.string "associate_department"
    t.string "associate_post"
    t.string "associate_name"
    t.string "associate_name_kana"
    t.string "payment_code"
    t.bigint "partner_id"
    t.string "post_code"
    t.string "pref_code"
    t.string "city_code"
    t.string "address"
    t.string "building"
    t.string "phone"
    t.string "fax"
    t.string "phone_mobile"
    t.string "email"
    t.text "memo"
    t.text "keyword"
    t.boolean "outsourcing"
    t.boolean "buying"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "product_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "product_kind"
    t.bigint "product_type_id"
    t.bigint "product_supplier_id"
    t.bigint "mansion_id"
    t.bigint "project_id"
    t.bigint "alliance_id"
    t.string "name"
    t.string "name_kana"
    t.integer "price"
    t.integer "cost"
    t.string "minutes"
    t.string "product_number"
    t.bigint "category_id"
    t.string "product_maker"
    t.boolean "friendlypoint_unusable"
    t.text "memo"
    t.boolean "estimate_needed"
    t.boolean "customer_visible"
    t.string "name_to_customer"
    t.text "explain_to_customer"
    t.integer "display_order"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["mansion_id"], name: "index_products_on_mansion_id"
    t.index ["product_supplier_id"], name: "index_products_on_product_supplier_id"
    t.index ["product_type_id"], name: "index_products_on_product_detail_type_id"
  end

  create_table "projects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "maid_work_needed", default: false, null: false
    t.boolean "house_work_needed", default: false, null: false
    t.boolean "well_supported", default: true, null: false
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "proxy_order_features", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.bigint "service_id"
    t.integer "adding_fee"
    t.text "adding_detail"
    t.integer "reduction_fee"
    t.text "reduction_detail"
    t.string "supported_staff_name"
    t.boolean "adding_reduction", default: false
    t.integer "total_amount"
    t.text "remarks_field"
    t.boolean "fixed_mybears_service", default: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_proxy_order_features_on__service_assign_id"
  end

  create_table "questionnaires", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "answer_format_type"
    t.boolean "required", default: true, null: false
    t.integer "display_order", null: false
    t.bigint "menu_id"
    t.bigint "category_id"
    t.bigint "alliance_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_questionnaire_on_alliance_id"
    t.index ["category_id"], name: "index_questionnaire_on_category_id"
    t.index ["display_order"], name: "index_questionnaire_on_display_order", unique: true
    t.index ["menu_id"], name: "index_questionnaire_on_menu_id"
  end

  create_table "recalculate_np_summaries", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_np_credit_information_id"], name: "index_recalculate_np_summaries_credit_information_id"
    t.index ["customer_np_summary_information_id"], name: "index_recalculate_np_summaries_summary_information_id"
  end

  create_table "recalculate_postal_code_reachables", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.date "work_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id", "work_date"], name: "index_recalculate_postal_code_reachables_staff_id"
  end

  create_table "recalculate_salary_prices", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_recalculate_salary_price_assign_id"
  end

  create_table "recalculate_service_assigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.bigint "staff_id"
    t.date "work_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_recalculate_service_assigns_service_assign_id"
  end

  create_table "recalculate_staff_vacations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_vacation_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_vacation_id"], name: "index_recalculate_staff_vacations_staff_vacation_id"
  end

  create_table "recalculate_station_reachables", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.date "work_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id", "work_date"], name: "index_recalculate_station_reachables_staff_id"
  end

  create_table "referrals", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "signup_account_id", null: false
    t.string "referral_type", null: false
    t.integer "alliance_id"
    t.string "alliance_user_id"
    t.integer "partner_id"
    t.integer "staff_id"
    t.integer "customer_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_referral_on_alliance_id"
    t.index ["alliance_user_id"], name: "index_referral_on_alliance_user_id"
    t.index ["customer_id"], name: "index_referral_on_customer_id"
    t.index ["partner_id"], name: "index_referral_on_partner_id"
    t.index ["signup_account_id"], name: "index_referral_on_signup_account_id"
    t.index ["staff_id"], name: "index_referral_on_staff_id"
  end

  create_table "regular_candidates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "name_kana"
    t.string "name_search"
    t.string "name_kana_search"
    t.string "name_en"
    t.string "former_school"
    t.integer "status"
    t.integer "evaluation"
    t.integer "candidate_type"
    t.integer "chance"
    t.integer "kind"
    t.integer "affiliation"
    t.date "join_date"
    t.date "application_date"
    t.date "last_contact_date"
    t.string "email", default: ""
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.text "memo"
    t.text "decline_reason"
    t.string "file"
    t.string "original_file_name"
    t.text "recommendation"
    t.text "concern"
    t.text "motivationup_talk"
    t.text "check_point"
    t.text "job_hunting_situation"
    t.text "competitor"
    t.text "interview_desired_job_type"
    t.text "interview_Job_hunting"
    t.text "interview_reasons_for_interest"
    t.text "interview_extracurricular_activitie"
    t.text "interview_motivationdown_work"
    t.text "first_desired_job_type"
    t.text "first_Job_hunting"
    t.text "first_reasons_for_interest"
    t.text "first_extracurricular_activitie"
    t.text "first_motivationdown_work"
    t.text "first_selection_reason"
    t.text "second_desired_job_type"
    t.text "second_Job_hunting"
    t.text "second_reasons_for_interest"
    t.text "second_extracurricular_activitie"
    t.text "second_motivationdown_work"
    t.text "second_selection_reason"
    t.text "third_desired_job_type"
    t.text "third_Job_hunting"
    t.text "third_reasons_for_interest"
    t.text "third_extracurricular_activitie"
    t.text "third_motivationdown_work"
    t.text "third_selection_reason"
    t.text "final_desired_job_type"
    t.text "final_Job_hunting"
    t.text "final_reasons_for_interest"
    t.text "final_extracurricular_activitie"
    t.text "final_motivationdown_work"
    t.text "final_selection_reason"
    t.bigint "channel_id"
    t.bigint "staff_id"
    t.bigint "user_id"
    t.bigint "business_department_id"
    t.bigint "business_division_id"
    t.bigint "business_section_id"
    t.bigint "business_team_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["address"], name: "index_regular_candidates_on_address_search"
    t.index ["building"], name: "index_regular_candidates_on_building_search"
    t.index ["city_code"], name: "index_regular_candidates_on_city_code_search"
    t.index ["name_kana_search"], name: "index_regular_candidates_on_name_kana_search"
    t.index ["name_search"], name: "index_regular_candidates_on_name_search"
    t.index ["pref_code"], name: "index_regular_candidates_on_pref_code_search"
    t.index ["room_no"], name: "index_regular_candidates_on_room_no_search"
    t.index ["town"], name: "index_regular_candidates_on_town_search"
  end

  create_table "regular_interview_assigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "regular_interview_id"
    t.string "status", null: false
    t.bigint "regular_candidate_id"
    t.bigint "regular_interview_type_id"
    t.boolean "passed", default: false, null: false
    t.integer "transportation_expense"
    t.integer "evaluation"
    t.datetime "start_at", precision: nil, null: false
    t.datetime "end_at", precision: nil, null: false
    t.bigint "pay_salary_row_id"
    t.text "memo"
    t.boolean "before_check"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "regular_interview_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "regular_interviews", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "regular_interview_type_id"
    t.integer "capacity"
    t.bigint "instructor_id"
    t.bigint "branch_id"
    t.boolean "pay_generated", default: false, null: false
    t.string "memo"
    t.datetime "start_at", precision: nil, null: false
    t.datetime "end_at", precision: nil, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["branch_id"], name: "index_regular_interviews_on_branch_id"
    t.index ["end_at"], name: "index_regular_interviews_on_end_at"
    t.index ["instructor_id"], name: "index_regular_interviews_on_instructor_id"
    t.index ["regular_interview_type_id"], name: "index_regular_interviews_on_regular_interview_type_id"
    t.index ["start_at"], name: "index_regular_interviews_on_start_at"
  end

  create_table "repeat_service_applications", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.bigint "contract_id", null: false
    t.text "memo", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id", "contract_id"], name: "index_contract_staff_id"
  end

  create_table "roles", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "role_code"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "salary_calculation_daily_jobkans", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "calc_date"
    t.date "calc_month"
    t.integer "week_number"
    t.bigint "salary_calculation_id"
    t.bigint "staff_id"
    t.string "staff_code"
    t.string "staff_type"
    t.string "shift_type"
    t.string "shift_work_from"
    t.float "work_hour_num", default: 0.0, null: false
    t.float "vacation_hour_num", default: 0.0, null: false
    t.float "other_vacation_hour_num", default: 0.0, null: false
    t.float "late_hour_num", default: 0.0, null: false
    t.float "within_hour_num", default: 0.0, null: false
    t.float "extra_hour_num", default: 0.0, null: false
    t.float "daily_legally_within_extra_hour_num", default: 0.0, null: false
    t.float "holiday_legally_within_extra_hour_num", default: 0.0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["calc_date", "staff_code"], name: "index_salary_calculation_daily_jobkans_on_calc_date", unique: true
    t.index ["salary_calculation_id"], name: "index_salary_calculation_daily_jobkans_on_salary_calculation_id"
    t.index ["staff_code"], name: "index_salary_calculation_daily_jobkans_on_staff_code"
    t.index ["staff_id", "calc_month", "week_number"], name: "index_salary_calculation_daily_jobkans_on_calc_month"
  end

  create_table "salary_calculation_exports", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "calc_month"
    t.bigint "salary_calculation_id"
    t.bigint "staff_id"
    t.string "staff_code"
    t.string "staff_name"
    t.string "staff_type"
    t.float "work_day_num"
    t.float "work_hour_num"
    t.float "vacation_hour_num"
    t.float "absence_day_num", default: 0.0, null: false
    t.float "late_hour_num", default: 0.0, null: false
    t.float "extra_hour_num", default: 0.0, null: false
    t.float "night_hour_num", default: 0.0, null: false
    t.float "holiday_hour_num", default: 0.0, null: false
    t.float "transport_hour_num", default: 0.0, null: false
    t.float "vacation_day_num", default: 0.0, null: false
    t.integer "monthly_wage", default: 0, null: false
    t.integer "vacation_wage", default: 0, null: false
    t.integer "extra_wage", default: 0, null: false
    t.integer "night_wage", default: 0, null: false
    t.integer "holiday_wage", default: 0, null: false
    t.integer "absence_minus_wage", default: 0, null: false
    t.integer "tax_included_wage", default: 0, null: false
    t.integer "transport_expense", default: 0, null: false
    t.integer "tax_excluded_wage", default: 0, null: false
    t.integer "insurance_wage", default: 0, null: false
    t.integer "allowance_wage", default: 0, null: false
    t.integer "transport_wage", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["calc_month", "staff_code"], name: "index_salary_calculation_exports_on_calc_month", unique: true
    t.index ["salary_calculation_id"], name: "index_salary_calculation_exports_on_salary_calculation_id"
    t.index ["staff_code"], name: "index_salary_calculation_exports_on_staff_code"
  end

  create_table "salary_calculation_jobkans", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "calc_month"
    t.bigint "salary_calculation_id"
    t.bigint "staff_id"
    t.string "staff_code"
    t.string "staff_name"
    t.string "staff_type"
    t.integer "hourly_wage", default: 0, null: false
    t.integer "transport_expense", default: 0, null: false
    t.float "work_day_num", default: 0.0, null: false
    t.float "work_hour_num", default: 0.0, null: false
    t.float "absence_day_num", default: 0.0, null: false
    t.float "late_hour_num", default: 0.0, null: false
    t.float "scheduled_work_day_num", default: 0.0, null: false
    t.float "vacation_day_num", default: 0.0, null: false
    t.float "legally_within_extra_hour_num", default: 0.0, null: false
    t.float "night_hour_num", default: 0.0, null: false
    t.float "holiday_hour_num", default: 0.0, null: false
    t.float "extra_hour_num", default: 0.0, null: false
    t.float "dup_extra_hour_num", default: 0.0, null: false
    t.float "other_vacation_day_num", default: 0.0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["calc_month", "staff_code"], name: "index_salary_calculation_jobkans_on_calc_month", unique: true
    t.index ["salary_calculation_id"], name: "index_salary_calculation_jobkans_on_salary_calculation_id"
    t.index ["staff_code"], name: "index_salary_calculation_jobkans_on_staff_code"
  end

  create_table "salary_calculation_kts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "calc_month"
    t.bigint "staff_id"
    t.bigint "salary_calculation_id"
    t.string "staff_code"
    t.integer "monthly_wage", default: 0, null: false
    t.integer "daily_wage", default: 0, null: false
    t.integer "hourly_wage", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["calc_month", "staff_code"], name: "index_salary_calculation_kts_on_calc_month", unique: true
    t.index ["salary_calculation_id"], name: "index_salary_calculation_kts_on_salary_calculation_id"
    t.index ["staff_code"], name: "index_salary_calculation_kts_on_staff_code"
  end

  create_table "salary_calculations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "calc_month"
    t.datetime "lock_at", precision: nil
    t.datetime "last_created_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["calc_month"], name: "index_salary_calculations_on_calc_month"
  end

  create_table "salary_company_holidays", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.date "holiday_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "salary_statements", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "staff_id"
    t.date "calc_month"
    t.string "staff_code", null: false
    t.string "staff_name", null: false
    t.integer "work_day_num", limit: 2
    t.float "working_hours"
    t.float "work2"
    t.float "work3"
    t.float "service_interval"
    t.float "normal_overtime"
    t.float "night_overtime"
    t.integer "absence_days", limit: 2
    t.float "vacation_day_num"
    t.float "rest_paid_holidays"
    t.integer "basic_price"
    t.integer "basic_hourly_price"
    t.integer "basic_hourly_price2"
    t.integer "basic_hourly_price3"
    t.integer "vacation_price"
    t.integer "service_interval_price"
    t.integer "all_allowance_price"
    t.integer "business_allowance"
    t.integer "leader_allowance"
    t.integer "skil_allowance"
    t.integer "attend_initial_training"
    t.integer "other_operating_parts"
    t.integer "tax_included_price"
    t.integer "tax_excluded_price"
    t.integer "overtime_price"
    t.integer "night_overtime_price"
    t.integer "holiday_work_price"
    t.integer "absence_deduction"
    t.integer "tax_excluded_commuting_expens"
    t.integer "tax_excluded_transport_expens"
    t.integer "tax_excluded_other_expens"
    t.integer "year_end_adjustment_refund"
    t.integer "year_end_adjustment_levy"
    t.integer "other_total_price"
    t.integer "holiday_night_work_price"
    t.integer "total_payment"
    t.integer "health_insurance"
    t.integer "care_insurance"
    t.integer "employee_pension"
    t.integer "adjustment_insurance"
    t.integer "employment_insurance"
    t.integer "social_insurance_premium"
    t.integer "resident_tax"
    t.integer "other_deduction"
    t.integer "income_tax"
    t.integer "calculated_income_tax"
    t.integer "advance_payment"
    t.integer "total_deduction"
    t.integer "balance_paid"
    t.integer "total_taxable_amount"
    t.integer "total_income_tax"
    t.integer "total_social_insurance_premium"
    t.string "original_file_name"
    t.string "file"
    t.date "pay_day"
    t.integer "payment_sum"
    t.boolean "pdf_exported"
    t.text "memo"
    t.datetime "created_at", precision: nil
    t.integer "creator_id"
    t.datetime "updated_at", precision: nil
    t.integer "updater_id"
    t.datetime "deleted_at", precision: nil
    t.integer "deleter_id"
  end

  create_table "sales_goals", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "unit_id"
    t.bigint "project_id"
    t.date "sales_month"
    t.integer "repeat_fix_price"
    t.integer "repeat_num_price"
    t.integer "spot_tup_price"
    t.integer "spot_addition_price"
    t.integer "spot_other_price"
    t.integer "friendlypoint_price"
    t.integer "cancel_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["project_id"], name: "index_sales_goals_on_project_id"
    t.index ["sales_month"], name: "index_sales_goals_on_sales_month"
    t.index ["unit_id"], name: "index_sales_goals_on_unit_id"
  end

  create_table "sample_models", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
  end

  create_table "scenario_messages", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "scenario_id"
    t.text "name"
    t.string "kind"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["scenario_id"], name: "index_scenario_messages_on_scenario_id"
  end

  create_table "scenario_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "scenario_message_id"
    t.integer "next_scenario_id"
    t.integer "finish_flag"
    t.string "name"
    t.string "kind"
    t.string "deep_link"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["next_scenario_id"], name: "index_scenario_options_on_next_scenario_id"
    t.index ["scenario_message_id"], name: "index_scenario_options_on_scenario_message_id"
  end

  create_table "scenarios", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "menu_id"
    t.integer "next_scenario_id"
    t.integer "finish_flag"
    t.boolean "is_insert_scenario_name", default: false
    t.text "is_note_for_ticket"
    t.integer "status"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "schedule_change_assigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "schedule_change_id"
    t.datetime "hope_from", precision: nil
    t.datetime "hope_to", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "schedule_changes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "staff_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.datetime "action_at", precision: nil
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.integer "schedule_change_status", default: 1, null: false
    t.boolean "is_agreement"
    t.integer "change_reasons"
    t.integer "change_failed_reason"
    t.integer "cancel_decision"
    t.boolean "temporary_staff"
    t.text "memo"
    t.string "generate_type"
    t.text "reason_memo"
    t.datetime "confirmed_at", precision: nil
    t.datetime "before_work_from", precision: nil
    t.datetime "before_work_to", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "schedule_users", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "staff_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "send_mails", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.bigint "service_id"
    t.string "send_mail_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["send_mail_type"], name: "index_send_mails_on_send_mail_type"
    t.index ["service_assign_id"], name: "index_send_mails_on_service_assign_id"
    t.index ["service_id"], name: "index_send_mails_on_service_id"
  end

  create_table "service_advance_cashes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "staff_id"
    t.integer "price"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_id"], name: "index_service_advance_cashes_on_service_id"
    t.index ["staff_id"], name: "index_service_advance_cashes_on_staff_id"
  end

  create_table "service_assign_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_assign_id"
    t.string "file"
    t.string "label"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "service_assigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "status"
    t.bigint "staff_id"
    t.bigint "service_id"
    t.bigint "contract_id"
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "waiting_location_id"
    t.bigint "project_id"
    t.string "kind", default: "normal", null: false
    t.boolean "first_training"
    t.boolean "first_training_transport_payable"
    t.integer "minutes"
    t.integer "rest_minutes"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.integer "early_type"
    t.integer "off_extra_minutes"
    t.boolean "early_fault"
    t.integer "late_type"
    t.boolean "late_fault"
    t.boolean "absent_fault"
    t.boolean "retraining"
    t.boolean "cancel_payable"
    t.boolean "cancel_transport_payable"
    t.integer "salary_price"
    t.integer "adjust_salary_price"
    t.text "adjust_salary_memo"
    t.integer "sales_price"
    t.integer "loyalty_sales_price"
    t.integer "adjust_loyalty_sales_price"
    t.integer "staff_num"
    t.bigint "beforeday_mail_id"
    t.bigint "beforeweek_mail_id"
    t.bigint "order_mail_id"
    t.datetime "beforeday_mail_comfirmed_at", precision: nil
    t.datetime "beforeweek_mail_comfirmed_at", precision: nil
    t.datetime "order_mail_confirmed_at", precision: nil
    t.datetime "in_mail_at", precision: nil
    t.boolean "in_mail_succeeded"
    t.datetime "in_confirmed_at", precision: nil
    t.bigint "in_confirmed_user_id"
    t.string "in_confirmed_token"
    t.datetime "out_mail_at", precision: nil
    t.boolean "out_mail_succeeded"
    t.datetime "out_confirmed_at", precision: nil
    t.bigint "out_confirmed_user_id"
    t.string "out_confirmed_token"
    t.text "inout_memo"
    t.text "work_report"
    t.text "customer_report"
    t.text "memo"
    t.text "out_message"
    t.text "together_url"
    t.datetime "matching_at", precision: nil
    t.bigint "matching_user_id"
    t.datetime "send_order_at", precision: nil
    t.bigint "send_order_user_id"
    t.string "send_order_method"
    t.string "matching_way"
    t.text "transport_route"
    t.text "transport_back_route"
    t.integer "transport_exchange_count"
    t.integer "transport_back_exchange_count"
    t.integer "transport_minutes"
    t.integer "transport_back_minutes"
    t.integer "transport_expense"
    t.integer "transport_back_expense"
    t.bigint "before_service_assign_id"
    t.bigint "after_service_assign_id"
    t.bigint "before_staff_other_work_id"
    t.bigint "after_staff_other_work_id"
    t.bigint "before_staff_training_assign_id"
    t.bigint "after_staff_training_assign_id"
    t.integer "before_service_assign_interval"
    t.integer "after_service_assign_interval"
    t.boolean "from_staff_route"
    t.boolean "to_staff_route"
    t.boolean "free_go_transport_expense", default: false, null: false
    t.boolean "free_back_transport_expense", default: false, null: false
    t.boolean "daily_locked"
    t.bigint "contract_week_schedule_id"
    t.bigint "contract_week_schedule_staff_id"
    t.bigint "accompany_staff_id"
    t.bigint "staff_seq"
    t.bigint "pay_salary_row_id"
    t.bigint "absence_service_assign_id"
    t.datetime "staff_update_date", precision: nil
    t.float "work_rate"
    t.integer "lock_version", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["accompany_staff_id"], name: "index_service_assign_on_accompany_staff_id"
    t.index ["after_service_assign_id"], name: "index_staff_assigns_on_after_service_assign_id"
    t.index ["before_service_assign_id"], name: "index_staff_assigns_on_before_service_assign_id"
    t.index ["contract_id"], name: "index_staff_assigns_on_contract_id"
    t.index ["contract_week_schedule_id", "staff_seq"], name: "index_staff_assigns_on_staff_seq"
    t.index ["contract_week_schedule_id", "work_from"], name: "index_staff_assigns_on_contract_week_schedule_id"
    t.index ["contract_week_schedule_staff_id", "work_from"], name: "index_staff_assigns_on_contract_week_schedule_staff_id"
    t.index ["customer_id", "work_from"], name: "index_staff_assigns_on_customer_id1"
    t.index ["customer_id", "work_to"], name: "index_staff_assigns_on_customer_id2"
    t.index ["customer_workplace_id", "work_from"], name: "index_staff_assigns_on_customer_workplace_id1"
    t.index ["customer_workplace_id", "work_to"], name: "index_staff_assigns_on_customer_workplace_id2"
    t.index ["in_confirmed_token"], name: "index_staff_assigns_on_in_confirmed_token"
    t.index ["out_confirmed_token"], name: "index_staff_assigns_on_out_confirmed_token"
    t.index ["service_id"], name: "index_staff_assigns_on_service_id"
    t.index ["staff_id", "work_from"], name: "index_staff_assigns_on_staff_id1"
    t.index ["staff_id", "work_to"], name: "index_staff_assigns_on_staff_id2"
    t.index ["work_from"], name: "index_staff_assigns_on_work_from"
  end

  create_table "service_corrections", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.date "correction_month"
    t.bigint "correction_bill_row_id"
    t.bigint "bill_row_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["correction_bill_row_id"], name: "index_service_corrections_on_correction_bill_row_id"
    t.index ["service_id", "correction_month", "correction_bill_row_id", "deleted_at"], name: "service_corrections_on_service_month", unique: true
  end

  create_table "service_hope_dates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.integer "hope_order"
    t.date "hope_date"
    t.string "hope_range"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_id"], name: "index_service_hope_dates_on_service_id"
  end

  create_table "service_instructions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "address"
    t.integer "absence_type"
    t.boolean "key_having"
    t.string "menu"
    t.string "cycle_type"
    t.string "work_sammary"
    t.bigint "contract_week_schedule_id"
    t.string "extend"
    t.string "station1"
    t.string "station2"
    t.string "bus"
    t.text "workinstructions_route"
    t.string "family"
    t.string "floor"
    t.boolean "outside_key"
    t.string "tool_place"
    t.string "dustcloth_place"
    t.string "garbage_dump_inside"
    t.string "garbage_dump_outside"
    t.string "bath_detergent_place"
    t.string "toilet_detergent_place"
    t.string "washroom_detergent_place"
    t.string "kitchen_detergent_place"
    t.string "report_place"
    t.string "keep_out_room"
    t.string "no_contact_stuff"
    t.text "service_circumstances"
    t.integer "demand_priorities1_time"
    t.string "demand_priorities1_item"
    t.text "demand_priorities1_note"
    t.integer "demand_priorities2_time"
    t.string "demand_priorities2_item"
    t.text "demand_priorities2_note"
    t.integer "demand_priorities3_time"
    t.string "demand_priorities3_item"
    t.text "demand_priorities3_note"
    t.integer "demand_priorities4_time"
    t.string "demand_priorities4_item"
    t.text "demand_priorities4_note"
    t.integer "demand_priorities5_time"
    t.string "demand_priorities5_item"
    t.text "demand_priorities5_note"
    t.integer "demand_priorities6_time"
    t.string "demand_priorities6_item"
    t.text "demand_priorities6_note"
    t.integer "demand_priorities7_time"
    t.string "demand_priorities7_item"
    t.text "demand_priorities7_note"
    t.text "work_note"
    t.string "demand_priorities1_cate"
    t.string "demand_priorities2_cate"
    t.string "demand_priorities3_cate"
    t.string "demand_priorities4_cate"
    t.string "demand_priorities5_cate"
    t.string "demand_priorities6_cate"
    t.string "demand_priorities7_cate"
    t.string "child_name1"
    t.date "child_birthday1"
    t.string "child_gender1"
    t.string "child_memo1"
    t.string "child_name2"
    t.date "child_birthday2"
    t.string "child_gender2"
    t.string "child_memo2"
    t.string "child_name3"
    t.date "child_birthday3"
    t.string "child_gender3"
    t.string "child_memo3"
    t.string "child_name4"
    t.date "child_birthday4"
    t.string "child_gender4"
    t.string "child_memo4"
    t.string "emergency_phone1", limit: 11
    t.string "emergency_phone_memo1"
    t.string "emergency_phone2", limit: 11
    t.string "emergency_phone_memo2"
    t.string "language"
    t.datetime "created_at", precision: nil
    t.integer "creator_id"
    t.datetime "updated_at", precision: nil
    t.integer "updater_id"
    t.datetime "deleted_at", precision: nil
    t.integer "deleter_id"
    t.index ["address"], name: "index_service_instructions_on_address"
    t.index ["bus"], name: "index_service_instructions_on_bus"
    t.index ["child_birthday1"], name: "index_service_instructions_on_customer_child_birthday1"
    t.index ["child_birthday2"], name: "index_service_instructions_on_customer_child_birthday2"
    t.index ["child_birthday3"], name: "index_service_instructions_on_customer_child_birthday3"
    t.index ["child_birthday4"], name: "index_service_instructions_on_customer_child_birthday4"
    t.index ["child_name1"], name: "index_service_instructions_on_child_name1"
    t.index ["child_name2"], name: "index_service_instructions_on_child_name2"
    t.index ["child_name3"], name: "index_service_instructions_on_child_name3"
    t.index ["child_name4"], name: "index_service_instructions_on_child_name4"
    t.index ["contract_id"], name: "index_service_instructions_on_contract_id"
    t.index ["created_at"], name: "index_service_instructions_on_created_at"
    t.index ["creator_id"], name: "index_service_instructions_on_creator_id"
    t.index ["customer_id"], name: "index_service_instructions_on_customer_id"
    t.index ["customer_workplace_id"], name: "index_service_instructions_on_customer_workplace_id"
    t.index ["emergency_phone1"], name: "index_service_instructions_on_emergency_phone1"
    t.index ["emergency_phone2"], name: "index_service_instructions_on_emergency_phone2"
    t.index ["name"], name: "index_service_instructions_on_name"
    t.index ["name_kana"], name: "index_service_instructions_on_name_kana"
    t.index ["service_id"], name: "index_service_instructions_on_service_id"
    t.index ["station1"], name: "index_service_instructions_on_station1"
    t.index ["station2"], name: "index_service_instructions_on_station2"
    t.index ["updated_at"], name: "index_service_instructions_on_updated_at"
    t.index ["updater_id"], name: "index_service_instructions_on_updater_id"
  end

  create_table "service_introductions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "contract_id"
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.bigint "staff_id"
    t.string "work_date"
    t.string "name"
    t.string "address"
    t.string "meet_place"
    t.text "route_to_station"
    t.text "route_from_station"
    t.boolean "has_key"
    t.string "ticket"
    t.bigint "branch_id"
    t.text "memo"
    t.datetime "created_at", precision: nil
    t.integer "creator_id"
    t.datetime "updated_at", precision: nil
    t.integer "updater_id"
    t.datetime "deleted_at", precision: nil
    t.integer "deleter_id"
    t.index ["address"], name: "index_service_introductions_on_address"
    t.index ["contract_id"], name: "index_ervice_introductions_on_contract_id"
    t.index ["customer_id"], name: "index_ervice_introductions_on_customer_id"
    t.index ["customer_workplace_id"], name: "index_ervice_introductions_on_customer_workplace_id"
    t.index ["meet_place"], name: "index_service_introductions_on_meet_place"
    t.index ["name"], name: "index_service_introductions_on_name"
    t.index ["service_assign_id"], name: "index_service_introductions_on_service_assign_id"
    t.index ["service_id"], name: "index_service_introductions_on_service_id"
    t.index ["staff_id"], name: "index_service_introductions_on_staff_id"
  end

  create_table "service_menu_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "menu_id"
    t.bigint "service_menu_id"
    t.integer "order_num"
    t.integer "service_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "service_menu_required_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "menu_id"
    t.bigint "service_menu_id"
    t.integer "order_num"
    t.integer "service_price"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["menu_id"], name: "index_service_menu_required_options_on_menu_id"
    t.index ["service_id"], name: "index_service_menu_required_options_on_service_id"
    t.index ["service_menu_id"], name: "index_service_menu_required_options_on_service_menu_id"
  end

  create_table "service_menu_special_skills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_menu_id"
    t.bigint "special_skill_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_menu_id"], name: "index_service_menu_special_skills_on_service_menu_id"
    t.index ["special_skill_id"], name: "index_service_menu_special_skills_on_special_skill_id"
  end

  create_table "service_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "main_service_menu_id"
    t.bigint "menu_id"
    t.bigint "work_id"
    t.integer "order_num"
    t.integer "service_price"
    t.string "service_type"
    t.boolean "added_on_service_day", default: false, null: false
    t.bigint "staff_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_id"], name: "index_service_menus_on_service_id"
  end

  create_table "service_special_skills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "special_skill_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_id"], name: "index_service_special_skills_on_service_id"
    t.index ["special_skill_id"], name: "index_service_special_skills_on_special_skill_id"
  end

  create_table "service_tickets", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "ticket_id"
    t.boolean "code_needed"
    t.boolean "collection_needed"
    t.string "code"
    t.bigint "staff_id"
    t.boolean "received"
    t.integer "price"
    t.integer "service_ticket_price"
    t.integer "service_alliance_ticket_price"
    t.bigint "service_menu_id"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_id"], name: "index_service_tickets_on_service_id"
    t.index ["ticket_id"], name: "index_service_tickets_on_ticket_id"
  end

  create_table "service_works", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "work_id"
    t.integer "workable_type"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_id"], name: "index_service_works_on_sevice_id"
    t.index ["work_id"], name: "index_service_works_on_work_id"
  end

  create_table "services", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "status", null: false
    t.integer "customer_status"
    t.integer "staff_status"
    t.boolean "date_undecided", default: false, null: false
    t.boolean "schedule_free", default: false, null: false
    t.boolean "absolute_arrangement", default: true, null: false
    t.boolean "rescheduled", default: false, null: false
    t.text "wanted_note"
    t.string "date_undecided_memo"
    t.integer "cancel_cause_type"
    t.boolean "cancel_billable"
    t.boolean "cancel_payable"
    t.integer "cancel_friendlypoint_type"
    t.boolean "irregular_give_friendlypoint"
    t.text "irregular_give_memo"
    t.string "none_friendlypoint_reason"
    t.text "none_friendlypoint_memo"
    t.string "kind", null: false
    t.bigint "customer_id"
    t.bigint "customer_workplace_id"
    t.bigint "alliance_id"
    t.string "original_type", default: "normal", null: false
    t.bigint "contract_id"
    t.bigint "project_id"
    t.bigint "term_type_id"
    t.string "term_repeat_type"
    t.boolean "hour_charged", default: false, null: false
    t.bigint "hourly_menu_id"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.datetime "contract_work_from", precision: nil
    t.datetime "contract_work_to", precision: nil
    t.integer "minutes"
    t.integer "rest_minutes"
    t.integer "staff_num"
    t.integer "total_price"
    t.integer "service_price"
    t.integer "transport_expense"
    t.integer "additional_price"
    t.string "additional_memo"
    t.integer "discount_price"
    t.bigint "discount_type_id"
    t.bigint "discount_type_detail_id"
    t.string "discount_memo"
    t.integer "alliance_discount_price"
    t.bigint "campaign_id"
    t.integer "campaign_discount_price"
    t.integer "campaign_busy_add_price"
    t.integer "off_extra_additional_price"
    t.integer "unaffected_salary_discount_price", default: 0
    t.string "unaffected_salary_discount_memo"
    t.text "work_contents"
    t.text "work_contents_staff"
    t.text "memo"
    t.integer "extend_minute"
    t.integer "extend_price"
    t.integer "extend_service_minute"
    t.integer "extend_service_price"
    t.integer "extend_service_off_extra_additional_price"
    t.boolean "off_extra_billed"
    t.integer "off_extra_morning_hour"
    t.integer "off_extra_evening_hour"
    t.boolean "holiday_extra_billed"
    t.integer "salaryup"
    t.string "alliance_collecting_type"
    t.bigint "pay_method_id"
    t.bigint "customer_pay_method_meiji_id"
    t.bigint "customer_pay_method_smbc_id"
    t.bigint "customer_pay_method_transfer_id"
    t.bigint "customer_pay_method_creditcard_id"
    t.bigint "customer_np_summary_information_id"
    t.bigint "customer_np_credit_information_id"
    t.bigint "np_summary_transaction_id"
    t.bigint "np_credit_transaction_id"
    t.boolean "fixed_mybears_service"
    t.integer "bank_collection_price"
    t.integer "alliance_collection_price"
    t.integer "prepay_price"
    t.date "prepay_date"
    t.text "customer_pay_memo"
    t.integer "friendlypoint_price"
    t.integer "np_price"
    t.bigint "alliance_discount_id"
    t.integer "alliance_discount_chargable_price"
    t.boolean "daily_locked", default: false, null: false
    t.bigint "bill_row_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.date "ordered_date"
    t.boolean "order_unlimited"
    t.string "code"
    t.bigint "another_day_service_id"
    t.bigint "today_service_id"
    t.bigint "customer_inquiry_id"
    t.integer "before_confirmation_type", default: 1, null: false
    t.boolean "together", default: false, null: false
    t.bigint "contract_week_schedule_id"
    t.integer "week_number"
    t.string "price_edited_reason"
    t.datetime "confirmation_sent_at", precision: nil
    t.datetime "confirmed_at", precision: nil
    t.string "confirmation_token"
    t.boolean "manual_contact", default: false, null: false
    t.datetime "matching_contacted_at", precision: nil
    t.integer "lock_version", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_services_on_alliance_id"
    t.index ["bill_row_id"], name: "index_services_on_bill_row_id"
    t.index ["confirmation_token"], name: "index_services_on_confirmation_token"
    t.index ["contract_id"], name: "index_services_on_contract_id"
    t.index ["contract_work_from"], name: "index_services_on_contract_work_from"
    t.index ["customer_id"], name: "index_services_on_customer_id"
    t.index ["customer_inquiry_id"], name: "index_services_on_customer_inquiry_id"
    t.index ["customer_np_credit_information_id"], name: "index_services_on_customer_np_credit_information_id"
    t.index ["customer_np_summary_information_id"], name: "index_services_on_customer_np_summary_information_id"
    t.index ["customer_pay_method_creditcard_id"], name: "index_services_on_customer_pay_method_creditcard_id"
    t.index ["customer_pay_method_meiji_id"], name: "index_services_on_customer_pay_method_meiji_id"
    t.index ["customer_pay_method_smbc_id"], name: "index_services_on_customer_pay_method_smbc_id"
    t.index ["customer_pay_method_transfer_id"], name: "index_services_on_customer_pay_method_transfer_id"
    t.index ["customer_workplace_id"], name: "index_services_on_customer_workplace_id"
    t.index ["discount_type_detail_id"], name: "index_services_on_discount_type_detail_id"
    t.index ["discount_type_id"], name: "index_services_on_discount_type_id"
    t.index ["np_credit_transaction_id"], name: "index_services_on_np_credit_transaction_id"
    t.index ["np_summary_transaction_id"], name: "index_services_on_np_summary_transaction_id"
    t.index ["prepay_date"], name: "index_services_on_prepay_date"
    t.index ["project_id"], name: "index_services_on_project_id"
    t.index ["term_type_id"], name: "index_services_on_term_type_id"
    t.index ["unit_id"], name: "index_services_on_unit_id"
    t.index ["user_id"], name: "index_services_on_user_id"
    t.index ["work_from"], name: "index_services_on_work_from"
  end

  create_table "ses_mail_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "mail_template_id"
    t.string "ses_template_code"
    t.string "subject"
    t.text "content"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["ses_template_code"], name: "index_mail_templates_on_ses_template_code"
  end

  create_table "sessions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "share_house_rooms", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "share_house_id"
    t.boolean "empty_room"
    t.integer "room_number"
    t.string "nhk_supported"
    t.integer "share_house_rent"
    t.integer "key_location"
    t.integer "person_burden"
    t.integer "company_obligation"
    t.string "post_no"
    t.string "share_house_room_key"
    t.string "company_storing_spare_key"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "share_houses", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "staff_foreigner_erea_id"
    t.string "management_company_name"
    t.string "name"
    t.string "share_house_address"
    t.string "share_house_address_en"
    t.string "wi_fi"
    t.integer "contract_withdrawal_writing_contain"
    t.integer "cancellation_fee"
    t.string "entrance_key"
    t.string "nearest_station"
    t.string "contract_style_occupancy_information"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "shortened_urls", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "owner_id"
    t.string "owner_type", limit: 20
    t.text "url"
    t.string "unique_key", limit: 10, null: false
    t.string "category"
    t.integer "use_count", default: 0, null: false
    t.datetime "expires_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["category"], name: "index_shortened_urls_on_category"
    t.index ["owner_id", "owner_type"], name: "index_shortened_urls_on_owner_id_and_owner_type"
    t.index ["url"], name: "index_shortened_urls_on_url", length: 767
  end

  create_table "signup_accounts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "authorizer_user_id"
    t.string "phone_number"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "smbc_transfer_accounts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "bank_code", limit: 4
    t.string "bank_name"
    t.string "bank_branch_code", limit: 3
    t.string "bank_branch_name"
    t.integer "account_type"
    t.string "account_number"
    t.string "account_name"
    t.date "assign_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["account_number"], name: "index_smbc_transfer_accounts_on_account_number"
    t.index ["bank_code", "bank_branch_code"], name: "index_smbc_transfer_accounts_on_bank_code"
  end

  create_table "sms_confirmations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "phone"
    t.string "sms_code_token"
    t.datetime "sms_sent_at", precision: nil
    t.boolean "active", default: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "sms_requests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.text "unique_id"
    t.text "body"
    t.string "phone", limit: 11
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
  end

  create_table "special_skills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.string "name"
    t.integer "minutes"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["work_id"], name: "index_special_skills_on_work_id"
  end

  create_table "spot_addable_groups", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_additional_payments", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "pay_date"
    t.bigint "staff_id"
    t.integer "price"
    t.string "kind"
    t.bigint "pay_salary_row_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["pay_date"], name: "index_staff_additional_payments_on_pay_date"
    t.index ["staff_id"], name: "index_staff_additional_payments_on_staff_id"
  end

  create_table "staff_affiliation_codes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code"
    t.integer "code_number"
    t.integer "training_wage_price"
    t.integer "transport_wage_price"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_alliances", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "alliance_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_staffs_on_alliance_id"
    t.index ["staff_id"], name: "index_staff_alliances_on_staff_id"
  end

  create_table "staff_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "pref_code"
    t.string "city_code"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_areas_on_staff_id"
  end

  create_table "staff_document_receiveds", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_document_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_document_id"], name: "index_staff_document_receiveds_on_staff_document_id"
    t.index ["staff_id"], name: "index_staff_document_receiveds_on_staff_id"
  end

  create_table "staff_documents", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "file"
    t.string "original_file_name"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_evaluations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.datetime "time_stamp", precision: nil
    t.bigint "customer_id"
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.bigint "accompany_staff_id"
    t.string "kind"
    t.text "customer_impression"
    t.string "meeting_result"
    t.integer "okame_o"
    t.integer "okame_k"
    t.integer "okame_a"
    t.integer "okame_m"
    t.integer "okame_e"
    t.integer "finish"
    t.integer "speed"
    t.integer "time_building"
    t.integer "notice"
    t.integer "consideration"
    t.integer "three_c"
    t.text "advice_memo"
    t.text "impression"
    t.boolean "cuisine_service"
    t.boolean "cleaning_service"
    t.text "directions_difference_point"
    t.text "other_work_detail_additional_change"
    t.string "courtesy"
    t.text "anxiety_elements"
    t.string "status_and_control"
    t.boolean "skill_missing"
    t.boolean "communication_error"
    t.boolean "working_excess"
    t.boolean "rule_ignored"
    t.boolean "consideration_missing"
    t.boolean "attendance"
    t.text "other_transmission_matter"
    t.boolean "report_troubled_home"
    t.string "app_download"
    t.boolean "sanitary_management"
    t.text "sanitary_management_miss_items"
    t.boolean "accompanying_required_is"
    t.string "accompanying_required_is_yes"
    t.string "suggested_fixed_term_project"
    t.text "note"
    t.integer "total_score"
    t.integer "supported_power"
    t.integer "sanitary_surface_wash_basin"
    t.integer "sanitary_surface_ingredient_tool"
    t.integer "safety_surface"
    t.integer "cleanup"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["accompany_staff_id"], name: "index_staff_evaluations_on_accompany_staff_id"
    t.index ["customer_id"], name: "index_staff_evaluations_on_customer_id"
    t.index ["service_assign_id"], name: "index_staff_evaluations_on_service_assign_id"
    t.index ["service_id"], name: "index_staff_evaluations_on_bill_service_id"
    t.index ["staff_id"], name: "index_staff_evaluations_on_staff_id"
  end

  create_table "staff_foreigner_contracts", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.integer "staff_foreigner_leader_id"
    t.date "contract_start_date"
    t.string "joining_method"
    t.string "account_cancellation"
    t.string "pay_determining_notice_receiving"
    t.string "staff_status_foreigner"
    t.date "contract_deadline_1_year_spot"
    t.date "contract_deadline_2_year_spot"
    t.date "contract_deadline_3_year_spot"
    t.date "contract_deadline_4_year_spot"
    t.date "contract_deadline_5_year_spot"
    t.date "contract_update_date"
    t.bigint "flight_number"
    t.string "overseas_address"
    t.string "marriage_information"
    t.integer "monthly_pay"
    t.integer "hourly_wage"
    t.string "jltp"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_foreigner_ereas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_foreigner_leaders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "reader_term"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_foreigner_residences", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "share_house_id"
    t.bigint "share_house_room_id"
    t.date "occupancy_date"
    t.date "expulsion_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_foreigner_residential_statuses", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "nationality"
    t.integer "resident_status_number"
    t.date "resident_status_expiration_date_1_year_spot"
    t.date "resident_status_expiration_date_2_year_spot"
    t.date "resident_status_expiration_date_3_year_spot"
    t.date "resident_status_expiration_date_4_year_spot"
    t.date "resident_status_expiration_date_5_year_spot"
    t.date "passport_expiration_date"
    t.date "immigration_date"
    t.string "passport_number"
    t.bigint "flight_number"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_foreigner_spot_schedules", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.date "business_start_date"
    t.string "status_foreigner_spot"
    t.date "temporary_return"
    t.date "re_entry_day"
    t.date "closed_days"
    t.date "return_to_work"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_hourly_wages", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.integer "price"
    t.date "work_month"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id", "work_month"], name: "staff_hourly_wages_uniq_index", unique: true
    t.index ["staff_id"], name: "staff_hourly_wages_staff_id"
  end

  create_table "staff_house_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "house_area_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["house_area_id"], name: "index_staff_house_areas_on_house_area_id"
    t.index ["staff_id", "house_area_id"], name: "index_staff_house_areas_on_staff_id"
  end

  create_table "staff_illustrations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_images", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_images_on_staff_id"
  end

  create_table "staff_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_informations_on_staff_id"
  end

  create_table "staff_kintais", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "use_date"
    t.bigint "staff_id"
    t.string "paid_vacation_day"
    t.integer "paid_vacation_minutes"
    t.bigint "pay_salary_row_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_kintais_on_staff_id"
    t.index ["use_date"], name: "index_staff_kintais_on_use_date"
  end

  create_table "staff_kt_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_kana_name", null: false
    t.string "last_kana_name", null: false
    t.integer "pay_group"
    t.integer "job_number"
    t.bigint "staff_affiliation_code_id"
    t.string "bank_code", limit: 4
    t.string "bank_branch_code", limit: 3
    t.integer "bank_account_type"
    t.string "bank_account_number", limit: 8
    t.string "bank_account_name", limit: 100
    t.string "bank_account_name_kana", limit: 100
    t.date "contract_date"
    t.boolean "imported"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id", "deleted_at"], name: "staff_kt_informations_uniq_index", unique: true
    t.index ["staff_id"], name: "index_staff_kt_informations_on_staff_id"
  end

  create_table "staff_matching_ereas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "unit_id"
    t.bigint "staff_erea_unit_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["unit_id"], name: "index_staff_matching_ereas_on_staff_erea_unit_id"
    t.index ["unit_id"], name: "index_staff_matching_ereas_on_unit_id"
  end

  create_table "staff_matching_limits", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "matching_limit_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["matching_limit_id"], name: "index_staff_matching_limits_on_matching_limit_id"
    t.index ["staff_id"], name: "index_staff_matching_limits_on_staff_id"
  end

  create_table "staff_matching_ng_conditions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "matching_ng_condition_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["matching_ng_condition_id"], name: "index_staff_matching_ng_conditions_on_matching_ng_condition_id"
    t.index ["staff_id"], name: "index_staff_matching_ng_conditions_on_staff_id"
  end

  create_table "staff_message_informations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "message_information_id"
    t.datetime "confirmed_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["message_information_id"], name: "index_message_informations_on_customer_id"
    t.index ["staff_id"], name: "index_message_informations_on_staff_id"
  end

  create_table "staff_mybears", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.string "login_id"
    t.string "encrypted_password", default: "", null: false
    t.string "password_salt"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "auth_token"
    t.boolean "use_app"
    t.datetime "app_used_at", precision: nil
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at", precision: nil
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.datetime "sms_sent_at", precision: nil
    t.string "sms_code_token"
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "refresh_token"
    t.datetime "refresh_token_expired_at", precision: nil
    t.json "tokens"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["auth_token"], name: "staff_mybears_on_auth_token", unique: true
    t.index ["login_id"], name: "staff_mybears_on_login_id"
    t.index ["reset_password_token"], name: "staff_mybears_on_reset_password_token", unique: true
    t.index ["staff_id", "deleted_at"], name: "staff_mybears_on_staff_id", unique: true
    t.index ["uid", "provider"], name: "index_staff_mybears_on_uid_and_provider"
  end

  create_table "staff_ng_bltstaffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "accompanying_staff"
    t.bigint "staff_id"
    t.string "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_customer_ng_staffs_on_staff_id"
  end

  create_table "staff_other_works", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.datetime "work_from", precision: nil
    t.datetime "work_to", precision: nil
    t.string "memo"
    t.boolean "payable"
    t.integer "transport_expense"
    t.bigint "pay_salary_row_id"
    t.bigint "branch_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["pay_salary_row_id"], name: "index_staff_other_works_on_pay_salary_row_id"
    t.index ["staff_id"], name: "index_staff_other_works_on_staff_id"
  end

  create_table "staff_projects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "project_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "alliance_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["project_id"], name: "index_staff_projects_on_project_id"
    t.index ["staff_id"], name: "index_staff_projects_on_staff_id"
    t.index ["unit_id"], name: "index_staff_projects_on_unit_id"
    t.index ["user_id"], name: "index_staff_projects_on_user_id"
  end

  create_table "staff_ranks", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "rank_month"
    t.bigint "staff_id"
    t.bigint "partner_id"
    t.bigint "unit_id"
    t.bigint "project_id"
    t.integer "rank"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["partner_id"], name: "index_staff_ranks_on_partner_id"
    t.index ["project_id"], name: "index_staff_ranks_on_project_id"
    t.index ["staff_id"], name: "index_staff_ranks_on_staff_id"
    t.index ["unit_id"], name: "index_staff_ranks_on_unit_id"
  end

  create_table "staff_reachable_postal_codes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "postal_code", limit: 3
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["postal_code"], name: "index_staff_reachable_postal_codes_on_postal_code"
    t.index ["staff_id", "postal_code"], name: "index_staff_reachable_postal_codes_on_staff_id", unique: true
  end

  create_table "staff_recommend_histories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "staff_id"
    t.integer "service_id"
    t.integer "service_assign_id"
    t.integer "contract_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_recommend_histories_on_staff_id"
  end

  create_table "staff_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "line"
    t.string "station"
    t.string "station_rail"
    t.text "memo"
    t.boolean "walkable", default: true, null: false
    t.integer "minute_to_station", default: 0, null: false
    t.integer "fee_to_station", default: 0, null: false
    t.boolean "ekispert_authenticated", default: true, null: false
    t.integer "minute_between_stations"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_routes_on_staff_id"
    t.index ["station"], name: "index_staff_routes_on_station"
  end

  create_table "staff_schedule_repeat_available_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_schedule_repeat_available_id"
    t.string "line"
    t.string "station"
    t.boolean "walkable", default: true, null: false
    t.integer "minute_to_station", default: 0, null: false
    t.integer "fee_to_station", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_schedule_repeat_available_id"], name: "index_staff_schedule_repeat_available_routes_on_available_id"
    t.index ["station"], name: "index_staff_schedule_repeat_available_routes_on_station"
  end

  create_table "staff_schedule_repeat_availables", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.integer "weekday_code", null: false
    t.string "available_type"
    t.time "work_from", null: false
    t.time "work_to", null: false
    t.bigint "contract_id"
    t.bigint "contract_week_schedule_id"
    t.bigint "contract_week_schedule_staff_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["contract_id"], name: "index_staff_schedule_repeat_availables_on_contract_id"
    t.index ["contract_week_schedule_id"], name: "index_staff_schedule_repeat_availables_on_schedule_id"
    t.index ["staff_id"], name: "index_staff_schedule_repeat_availables_on_staff_id"
  end

  create_table "staff_schedule_repeat_hopes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "summary"
    t.bigint "google_calendar_type_id"
    t.bigint "schedule_user_id"
    t.integer "weekday_code", null: false
    t.string "hope_type", null: false
    t.time "work_from", null: false
    t.time "work_to", null: false
    t.boolean "trainer_service", default: false
    t.datetime "staff_update_date", precision: nil
    t.bigint "station_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_schedule_repeat_hopes_on_staff_id"
  end

  create_table "staff_schedule_repeats", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.integer "weekday_code", null: false
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_schedule_repeats_on_staff_id"
  end

  create_table "staff_schedule_spot_available_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_schedule_spot_available_id"
    t.string "line"
    t.string "station"
    t.boolean "walkable", default: true, null: false
    t.integer "minute_to_station", default: 0, null: false
    t.integer "fee_to_station", default: 0, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_schedule_spot_available_id"], name: "index_staff_schedule_spot_available_routes_on_available_id"
    t.index ["station"], name: "index_staff_schedule_spot_available_routes_on_station"
  end

  create_table "staff_schedule_spot_availables", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "available_type"
    t.datetime "work_from", precision: nil, null: false
    t.datetime "work_to", precision: nil, null: false
    t.bigint "service_assign_id"
    t.bigint "staff_training_assign_id"
    t.bigint "staff_other_work_id"
    t.integer "workable_staff_num"
    t.integer "update_flg"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_staff_schedule_spot_availables_on_service_assign_id"
    t.index ["staff_id", "work_from"], name: "index_staff_schedule_spot_availables_on_staff_id_and_work_from"
    t.index ["staff_id", "work_to"], name: "index_staff_schedule_spot_availables_on_staff_id_and_work_to"
    t.index ["staff_other_work_id"], name: "index_staff_schedule_spot_availables_on_staff_other_work_id"
    t.index ["staff_training_assign_id"], name: "schedule_spot_training_assign"
  end

  create_table "staff_schedule_spot_bears_memos", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.date "work_date", null: false
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_schedule_spot_bears_memos_on_staff_id"
  end

  create_table "staff_schedule_spot_hopes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.string "summary"
    t.bigint "schedule_user_id"
    t.bigint "google_calendar_type_id"
    t.string "hope_type"
    t.boolean "accompanying_allowed", default: false, null: false
    t.datetime "work_from", precision: nil, null: false
    t.datetime "work_to", precision: nil, null: false
    t.integer "workable_staff_num"
    t.datetime "staff_update_date", precision: nil
    t.bigint "station_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_schedule_spot_hopes_on_staff_id"
    t.index ["station_id"], name: "index_staff_schedule_spot_hopes_on_station_id"
  end

  create_table "staff_schedule_spots", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.date "work_date", null: false
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id", "work_date"], name: "index_staff_schedule_spots_on_staff_id_and_work_date"
    t.index ["staff_id"], name: "index_staff_schedule_spots_on_staff_id"
  end

  create_table "staff_service_report_events", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_service_report_id"
    t.bigint "customer_report_event_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_report_event_id"], name: "index_staff_service_report_events_on_customer_report_event_id"
    t.index ["staff_service_report_id"], name: "index_staff_service_report_events_on_staff_service_report_id"
  end

  create_table "staff_service_report_requests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_service_report_id"
    t.bigint "customer_report_request_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_report_request_id"], name: "index_ssrr_on_customer_report_request_id"
    t.index ["staff_service_report_id"], name: "index_staff_service_report_requests_on_staff_service_report_id"
  end

  create_table "staff_service_reports", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "staff_id"
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.integer "satisfaction"
    t.boolean "card_change"
    t.boolean "only_once"
    t.text "card_memo"
    t.text "request_memo"
    t.text "event_memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_staff_service_reports_on_customer_id"
    t.index ["service_assign_id"], name: "index_staff_service_reports_on_service_assign_id"
    t.index ["service_id"], name: "index_staff_service_reports_on_bill_service_id"
    t.index ["staff_id"], name: "index_staff_service_reports_on_staff_id"
  end

  create_table "staff_special_skills", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "special_skill_id"
    t.integer "working_efficiency"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["special_skill_id"], name: "index_staff_special_skills_on_special_skill_id"
    t.index ["staff_id"], name: "index_staff_special_skills_on_staff_id"
  end

  create_table "staff_subscriptions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "service_id"
    t.bigint "service_assign_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_staff_evaluations_on_service_assign_id"
    t.index ["service_id"], name: "index_staff_evaluations_on_bill_service_id"
    t.index ["staff_id"], name: "index_staff_evaluations_on_staff_id"
  end

  create_table "staff_support_areas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.integer "kind"
    t.string "pref_code"
    t.string "city_code"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_training_assigns", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_training_id"
    t.string "status", null: false
    t.bigint "staff_id"
    t.boolean "unpassed", default: false, null: false
    t.integer "transportation_expense"
    t.datetime "start_at", precision: nil, null: false
    t.datetime "end_at", precision: nil, null: false
    t.bigint "pay_salary_row_id"
    t.text "memo"
    t.boolean "before_check"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["end_at"], name: "index_staff_training_assigns_on_end_at"
    t.index ["staff_id"], name: "index_staff_training_assigns_on_staff_id"
    t.index ["staff_training_id"], name: "index_staff_training_assigns_on_staff_training_id"
    t.index ["start_at"], name: "index_staff_training_assigns_on_start_at"
  end

  create_table "staff_training_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_trainings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "staff_training_type_id"
    t.integer "capacity"
    t.bigint "instructor_id"
    t.bigint "branch_id"
    t.boolean "pay_generated", default: false, null: false
    t.string "memo"
    t.datetime "start_at", precision: nil, null: false
    t.datetime "end_at", precision: nil, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["branch_id"], name: "index_staff_trainings_on_branch_id"
    t.index ["end_at"], name: "index_staff_trainings_on_end_at"
    t.index ["instructor_id"], name: "index_staff_trainings_on_instructor_id"
    t.index ["staff_training_type_id"], name: "index_staff_trainings_on_staff_training_type_id"
    t.index ["start_at"], name: "index_staff_trainings_on_start_at"
  end

  create_table "staff_vacation_uses", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_vacation_id"
    t.bigint "staff_id"
    t.bigint "service_assign_id"
    t.float "days"
    t.bigint "pay_salary_row_id"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["service_assign_id"], name: "index_staff_vacation_uses_on_service_assign_id"
    t.index ["staff_id"], name: "index_staff_vacation_uses_on_staff_id"
    t.index ["staff_vacation_id"], name: "index_staff_vacation_uses_on_staff_vacation_id"
  end

  create_table "staff_vacations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.float "days"
    t.integer "minutes"
    t.float "balance_days"
    t.date "expire_at"
    t.date "add_at"
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_vacations_on_staff_id"
  end

  create_table "staff_warning_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "staff_warnings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_warning_type_id"
    t.string "level"
    t.date "warn_at"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_warnings_on_staff_id"
    t.index ["staff_warning_type_id"], name: "index_staff_warnings_on_staff_warning_type_id"
  end

  create_table "staff_works", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "work_id"
    t.integer "workable_type"
    t.integer "working_efficiency"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["staff_id"], name: "index_staff_works_on_staff_id"
    t.index ["work_id"], name: "index_staff_works_on_work_id"
  end

  create_table "staffs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "status", null: false
    t.bigint "partner_id"
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "name_search", null: false
    t.string "name_kana_search", null: false
    t.string "name_en"
    t.boolean "companied"
    t.string "gender"
    t.date "birthday"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.string "phone", limit: 11
    t.string "phone_memo"
    t.string "phone_mobile", limit: 11
    t.string "phone_mobile_memo"
    t.string "fax", limit: 10
    t.string "email"
    t.string "email_mobile"
    t.string "email_memo"
    t.string "email_mobile_memo"
    t.string "email_inout"
    t.string "email_mailmaga"
    t.boolean "mailmaga_sendable"
    t.boolean "push_ng"
    t.text "contact_memo"
    t.string "holiday_hope_type"
    t.string "holiday_memo"
    t.string "calendar_code"
    t.text "memo"
    t.text "assign_memo"
    t.string "rakusai_id"
    t.string "training_status"
    t.boolean "application_form"
    t.boolean "commitment_form"
    t.date "licence_limit_at"
    t.date "voluntary_insurance_limit_at"
    t.date "liability_insurance_limit_at"
    t.date "vehicle_inspection_limit_at"
    t.date "register_at"
    t.date "quit_at"
    t.string "quit_type"
    t.text "quit_memo"
    t.date "rest_at"
    t.date "grad_at"
    t.boolean "royal"
    t.boolean "drivable"
    t.string "drivable_memo"
    t.boolean "mycar_drivable"
    t.boolean "mybike_drivable"
    t.boolean "documents_received"
    t.string "salary_type"
    t.integer "hourly_wage"
    t.integer "suggested_monthly_income"
    t.boolean "employment_agreement"
    t.boolean "confidentiality_pledge"
    t.boolean "identity_guarantee"
    t.bigint "channel_id"
    t.integer "introduction_customer_id"
    t.integer "introduction_staff_id"
    t.integer "staff_illustration_id"
    t.boolean "smoking"
    t.string "smoking_memo"
    t.text "information_to_customer"
    t.date "first_work_at"
    t.integer "work_month_num"
    t.string "staff_maid_type"
    t.string "trainer_rank"
    t.text "good_points"
    t.text "bad_points"
    t.text "qualifications"
    t.boolean "repeat_wanted"
    t.boolean "spot_wanted"
    t.boolean "dup_schedule", default: false, null: false
    t.boolean "is_team", default: false, null: false
    t.string "house_rank"
    t.boolean "leadable"
    t.boolean "hour_workable"
    t.boolean "washing_machine_having"
    t.integer "staff_num"
    t.integer "spot_assign_num"
    t.string "password_change_code"
    t.datetime "password_change_limit", precision: nil
    t.boolean "presentable", default: false
    t.string "send_order_method"
    t.text "limit_note"
    t.boolean "ok_row_price", default: true
    t.bigint "available_price", default: 30000
    t.integer "go_back_limit_minute"
    t.integer "between_limit_minute"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.boolean "able_instractor"
    t.boolean "dfd_application", default: true
    t.index ["address"], name: "index_staffs_on_address_search"
    t.index ["birthday"], name: "index_staffs_on_birthday_search"
    t.index ["building"], name: "index_staffs_on_building_search"
    t.index ["channel_id"], name: "index_staffs_on_channel_id"
    t.index ["city_code"], name: "index_staffs_on_city_code_search"
    t.index ["email"], name: "index_staffs_on_email"
    t.index ["email_inout"], name: "index_staffs_on_email_inout_search"
    t.index ["email_mailmaga"], name: "index_staffs_on_email_mailmaga_search"
    t.index ["email_mobile"], name: "index_staffs_on_email_mobile_search"
    t.index ["fax"], name: "index_staffs_on_fax_search"
    t.index ["introduction_customer_id"], name: "index_staffs_on_introduction_customer_id_search"
    t.index ["introduction_staff_id"], name: "index_staffs_on_introduction_staff_id_search"
    t.index ["name_kana_search"], name: "index_staffs_on_name_kana_search"
    t.index ["name_search"], name: "index_staffs_on_name_search"
    t.index ["partner_id"], name: "index_staffs_on_partner_id"
    t.index ["phone"], name: "index_staffs_on_phone"
    t.index ["phone_mobile"], name: "index_staffs_on_phone_mobile_search"
    t.index ["pref_code"], name: "index_staffs_on_pref_code_search"
    t.index ["room_no"], name: "index_staffs_on_room_no_search"
    t.index ["town"], name: "index_staffs_on_town_search"
  end

  create_table "station_rails", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["name"], name: "index_station_rails_on_name"
  end

  create_table "station_reachables0", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables0_idx1"
    t.index ["reachable_station"], name: "index_station_reachables0_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables0_idx2"
    t.index ["starting_station"], name: "index_station_reachables0_on_starting_station"
  end

  create_table "station_reachables1", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables1_idx1"
    t.index ["reachable_station"], name: "index_station_reachables1_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables1_idx2"
    t.index ["starting_station"], name: "index_station_reachables1_on_starting_station"
  end

  create_table "station_reachables10", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables10_idx1"
    t.index ["reachable_station"], name: "index_station_reachables10_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables10_idx2"
    t.index ["starting_station"], name: "index_station_reachables10_on_starting_station"
  end

  create_table "station_reachables100", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables100_idx1"
    t.index ["reachable_station"], name: "index_station_reachables100_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables100_idx2"
    t.index ["starting_station"], name: "index_station_reachables100_on_starting_station"
  end

  create_table "station_reachables101", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables101_idx1"
    t.index ["reachable_station"], name: "index_station_reachables101_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables101_idx2"
    t.index ["starting_station"], name: "index_station_reachables101_on_starting_station"
  end

  create_table "station_reachables102", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables102_idx1"
    t.index ["reachable_station"], name: "index_station_reachables102_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables102_idx2"
    t.index ["starting_station"], name: "index_station_reachables102_on_starting_station"
  end

  create_table "station_reachables103", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables103_idx1"
    t.index ["reachable_station"], name: "index_station_reachables103_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables103_idx2"
    t.index ["starting_station"], name: "index_station_reachables103_on_starting_station"
  end

  create_table "station_reachables104", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables104_idx1"
    t.index ["reachable_station"], name: "index_station_reachables104_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables104_idx2"
    t.index ["starting_station"], name: "index_station_reachables104_on_starting_station"
  end

  create_table "station_reachables105", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables105_idx1"
    t.index ["reachable_station"], name: "index_station_reachables105_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables105_idx2"
    t.index ["starting_station"], name: "index_station_reachables105_on_starting_station"
  end

  create_table "station_reachables106", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables106_idx1"
    t.index ["reachable_station"], name: "index_station_reachables106_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables106_idx2"
    t.index ["starting_station"], name: "index_station_reachables106_on_starting_station"
  end

  create_table "station_reachables107", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables107_idx1"
    t.index ["reachable_station"], name: "index_station_reachables107_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables107_idx2"
    t.index ["starting_station"], name: "index_station_reachables107_on_starting_station"
  end

  create_table "station_reachables108", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables108_idx1"
    t.index ["reachable_station"], name: "index_station_reachables108_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables108_idx2"
    t.index ["starting_station"], name: "index_station_reachables108_on_starting_station"
  end

  create_table "station_reachables109", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables109_idx1"
    t.index ["reachable_station"], name: "index_station_reachables109_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables109_idx2"
    t.index ["starting_station"], name: "index_station_reachables109_on_starting_station"
  end

  create_table "station_reachables11", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables11_idx1"
    t.index ["reachable_station"], name: "index_station_reachables11_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables11_idx2"
    t.index ["starting_station"], name: "index_station_reachables11_on_starting_station"
  end

  create_table "station_reachables110", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables110_idx1"
    t.index ["reachable_station"], name: "index_station_reachables110_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables110_idx2"
    t.index ["starting_station"], name: "index_station_reachables110_on_starting_station"
  end

  create_table "station_reachables111", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables111_idx1"
    t.index ["reachable_station"], name: "index_station_reachables111_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables111_idx2"
    t.index ["starting_station"], name: "index_station_reachables111_on_starting_station"
  end

  create_table "station_reachables112", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables112_idx1"
    t.index ["reachable_station"], name: "index_station_reachables112_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables112_idx2"
    t.index ["starting_station"], name: "index_station_reachables112_on_starting_station"
  end

  create_table "station_reachables113", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables113_idx1"
    t.index ["reachable_station"], name: "index_station_reachables113_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables113_idx2"
    t.index ["starting_station"], name: "index_station_reachables113_on_starting_station"
  end

  create_table "station_reachables114", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables114_idx1"
    t.index ["reachable_station"], name: "index_station_reachables114_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables114_idx2"
    t.index ["starting_station"], name: "index_station_reachables114_on_starting_station"
  end

  create_table "station_reachables115", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables115_idx1"
    t.index ["reachable_station"], name: "index_station_reachables115_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables115_idx2"
    t.index ["starting_station"], name: "index_station_reachables115_on_starting_station"
  end

  create_table "station_reachables116", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables116_idx1"
    t.index ["reachable_station"], name: "index_station_reachables116_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables116_idx2"
    t.index ["starting_station"], name: "index_station_reachables116_on_starting_station"
  end

  create_table "station_reachables117", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables117_idx1"
    t.index ["reachable_station"], name: "index_station_reachables117_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables117_idx2"
    t.index ["starting_station"], name: "index_station_reachables117_on_starting_station"
  end

  create_table "station_reachables118", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables118_idx1"
    t.index ["reachable_station"], name: "index_station_reachables118_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables118_idx2"
    t.index ["starting_station"], name: "index_station_reachables118_on_starting_station"
  end

  create_table "station_reachables119", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables119_idx1"
    t.index ["reachable_station"], name: "index_station_reachables119_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables119_idx2"
    t.index ["starting_station"], name: "index_station_reachables119_on_starting_station"
  end

  create_table "station_reachables12", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables12_idx1"
    t.index ["reachable_station"], name: "index_station_reachables12_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables12_idx2"
    t.index ["starting_station"], name: "index_station_reachables12_on_starting_station"
  end

  create_table "station_reachables120", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables120_idx1"
    t.index ["reachable_station"], name: "index_station_reachables120_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables120_idx2"
    t.index ["starting_station"], name: "index_station_reachables120_on_starting_station"
  end

  create_table "station_reachables121", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables121_idx1"
    t.index ["reachable_station"], name: "index_station_reachables121_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables121_idx2"
    t.index ["starting_station"], name: "index_station_reachables121_on_starting_station"
  end

  create_table "station_reachables122", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables122_idx1"
    t.index ["reachable_station"], name: "index_station_reachables122_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables122_idx2"
    t.index ["starting_station"], name: "index_station_reachables122_on_starting_station"
  end

  create_table "station_reachables123", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables123_idx1"
    t.index ["reachable_station"], name: "index_station_reachables123_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables123_idx2"
    t.index ["starting_station"], name: "index_station_reachables123_on_starting_station"
  end

  create_table "station_reachables124", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables124_idx1"
    t.index ["reachable_station"], name: "index_station_reachables124_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables124_idx2"
    t.index ["starting_station"], name: "index_station_reachables124_on_starting_station"
  end

  create_table "station_reachables125", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables125_idx1"
    t.index ["reachable_station"], name: "index_station_reachables125_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables125_idx2"
    t.index ["starting_station"], name: "index_station_reachables125_on_starting_station"
  end

  create_table "station_reachables126", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables126_idx1"
    t.index ["reachable_station"], name: "index_station_reachables126_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables126_idx2"
    t.index ["starting_station"], name: "index_station_reachables126_on_starting_station"
  end

  create_table "station_reachables127", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables127_idx1"
    t.index ["reachable_station"], name: "index_station_reachables127_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables127_idx2"
    t.index ["starting_station"], name: "index_station_reachables127_on_starting_station"
  end

  create_table "station_reachables128", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables128_idx1"
    t.index ["reachable_station"], name: "index_station_reachables128_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables128_idx2"
    t.index ["starting_station"], name: "index_station_reachables128_on_starting_station"
  end

  create_table "station_reachables129", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables129_idx1"
    t.index ["reachable_station"], name: "index_station_reachables129_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables129_idx2"
    t.index ["starting_station"], name: "index_station_reachables129_on_starting_station"
  end

  create_table "station_reachables13", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables13_idx1"
    t.index ["reachable_station"], name: "index_station_reachables13_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables13_idx2"
    t.index ["starting_station"], name: "index_station_reachables13_on_starting_station"
  end

  create_table "station_reachables130", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables130_idx1"
    t.index ["reachable_station"], name: "index_station_reachables130_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables130_idx2"
    t.index ["starting_station"], name: "index_station_reachables130_on_starting_station"
  end

  create_table "station_reachables131", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables131_idx1"
    t.index ["reachable_station"], name: "index_station_reachables131_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables131_idx2"
    t.index ["starting_station"], name: "index_station_reachables131_on_starting_station"
  end

  create_table "station_reachables132", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables132_idx1"
    t.index ["reachable_station"], name: "index_station_reachables132_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables132_idx2"
    t.index ["starting_station"], name: "index_station_reachables132_on_starting_station"
  end

  create_table "station_reachables133", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables133_idx1"
    t.index ["reachable_station"], name: "index_station_reachables133_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables133_idx2"
    t.index ["starting_station"], name: "index_station_reachables133_on_starting_station"
  end

  create_table "station_reachables134", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables134_idx1"
    t.index ["reachable_station"], name: "index_station_reachables134_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables134_idx2"
    t.index ["starting_station"], name: "index_station_reachables134_on_starting_station"
  end

  create_table "station_reachables135", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables135_idx1"
    t.index ["reachable_station"], name: "index_station_reachables135_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables135_idx2"
    t.index ["starting_station"], name: "index_station_reachables135_on_starting_station"
  end

  create_table "station_reachables136", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables136_idx1"
    t.index ["reachable_station"], name: "index_station_reachables136_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables136_idx2"
    t.index ["starting_station"], name: "index_station_reachables136_on_starting_station"
  end

  create_table "station_reachables137", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables137_idx1"
    t.index ["reachable_station"], name: "index_station_reachables137_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables137_idx2"
    t.index ["starting_station"], name: "index_station_reachables137_on_starting_station"
  end

  create_table "station_reachables138", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables138_idx1"
    t.index ["reachable_station"], name: "index_station_reachables138_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables138_idx2"
    t.index ["starting_station"], name: "index_station_reachables138_on_starting_station"
  end

  create_table "station_reachables139", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables139_idx1"
    t.index ["reachable_station"], name: "index_station_reachables139_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables139_idx2"
    t.index ["starting_station"], name: "index_station_reachables139_on_starting_station"
  end

  create_table "station_reachables14", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables14_idx1"
    t.index ["reachable_station"], name: "index_station_reachables14_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables14_idx2"
    t.index ["starting_station"], name: "index_station_reachables14_on_starting_station"
  end

  create_table "station_reachables140", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables140_idx1"
    t.index ["reachable_station"], name: "index_station_reachables140_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables140_idx2"
    t.index ["starting_station"], name: "index_station_reachables140_on_starting_station"
  end

  create_table "station_reachables141", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables141_idx1"
    t.index ["reachable_station"], name: "index_station_reachables141_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables141_idx2"
    t.index ["starting_station"], name: "index_station_reachables141_on_starting_station"
  end

  create_table "station_reachables142", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables142_idx1"
    t.index ["reachable_station"], name: "index_station_reachables142_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables142_idx2"
    t.index ["starting_station"], name: "index_station_reachables142_on_starting_station"
  end

  create_table "station_reachables143", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables143_idx1"
    t.index ["reachable_station"], name: "index_station_reachables143_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables143_idx2"
    t.index ["starting_station"], name: "index_station_reachables143_on_starting_station"
  end

  create_table "station_reachables144", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables144_idx1"
    t.index ["reachable_station"], name: "index_station_reachables144_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables144_idx2"
    t.index ["starting_station"], name: "index_station_reachables144_on_starting_station"
  end

  create_table "station_reachables145", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables145_idx1"
    t.index ["reachable_station"], name: "index_station_reachables145_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables145_idx2"
    t.index ["starting_station"], name: "index_station_reachables145_on_starting_station"
  end

  create_table "station_reachables146", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables146_idx1"
    t.index ["reachable_station"], name: "index_station_reachables146_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables146_idx2"
    t.index ["starting_station"], name: "index_station_reachables146_on_starting_station"
  end

  create_table "station_reachables147", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables147_idx1"
    t.index ["reachable_station"], name: "index_station_reachables147_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables147_idx2"
    t.index ["starting_station"], name: "index_station_reachables147_on_starting_station"
  end

  create_table "station_reachables148", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables148_idx1"
    t.index ["reachable_station"], name: "index_station_reachables148_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables148_idx2"
    t.index ["starting_station"], name: "index_station_reachables148_on_starting_station"
  end

  create_table "station_reachables149", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables149_idx1"
    t.index ["reachable_station"], name: "index_station_reachables149_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables149_idx2"
    t.index ["starting_station"], name: "index_station_reachables149_on_starting_station"
  end

  create_table "station_reachables15", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables15_idx1"
    t.index ["reachable_station"], name: "index_station_reachables15_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables15_idx2"
    t.index ["starting_station"], name: "index_station_reachables15_on_starting_station"
  end

  create_table "station_reachables150", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables150_idx1"
    t.index ["reachable_station"], name: "index_station_reachables150_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables150_idx2"
    t.index ["starting_station"], name: "index_station_reachables150_on_starting_station"
  end

  create_table "station_reachables151", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables151_idx1"
    t.index ["reachable_station"], name: "index_station_reachables151_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables151_idx2"
    t.index ["starting_station"], name: "index_station_reachables151_on_starting_station"
  end

  create_table "station_reachables152", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables152_idx1"
    t.index ["reachable_station"], name: "index_station_reachables152_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables152_idx2"
    t.index ["starting_station"], name: "index_station_reachables152_on_starting_station"
  end

  create_table "station_reachables153", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables153_idx1"
    t.index ["reachable_station"], name: "index_station_reachables153_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables153_idx2"
    t.index ["starting_station"], name: "index_station_reachables153_on_starting_station"
  end

  create_table "station_reachables154", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables154_idx1"
    t.index ["reachable_station"], name: "index_station_reachables154_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables154_idx2"
    t.index ["starting_station"], name: "index_station_reachables154_on_starting_station"
  end

  create_table "station_reachables155", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables155_idx1"
    t.index ["reachable_station"], name: "index_station_reachables155_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables155_idx2"
    t.index ["starting_station"], name: "index_station_reachables155_on_starting_station"
  end

  create_table "station_reachables156", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables156_idx1"
    t.index ["reachable_station"], name: "index_station_reachables156_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables156_idx2"
    t.index ["starting_station"], name: "index_station_reachables156_on_starting_station"
  end

  create_table "station_reachables157", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables157_idx1"
    t.index ["reachable_station"], name: "index_station_reachables157_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables157_idx2"
    t.index ["starting_station"], name: "index_station_reachables157_on_starting_station"
  end

  create_table "station_reachables158", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables158_idx1"
    t.index ["reachable_station"], name: "index_station_reachables158_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables158_idx2"
    t.index ["starting_station"], name: "index_station_reachables158_on_starting_station"
  end

  create_table "station_reachables159", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables159_idx1"
    t.index ["reachable_station"], name: "index_station_reachables159_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables159_idx2"
    t.index ["starting_station"], name: "index_station_reachables159_on_starting_station"
  end

  create_table "station_reachables16", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables16_idx1"
    t.index ["reachable_station"], name: "index_station_reachables16_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables16_idx2"
    t.index ["starting_station"], name: "index_station_reachables16_on_starting_station"
  end

  create_table "station_reachables160", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables160_idx1"
    t.index ["reachable_station"], name: "index_station_reachables160_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables160_idx2"
    t.index ["starting_station"], name: "index_station_reachables160_on_starting_station"
  end

  create_table "station_reachables161", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables161_idx1"
    t.index ["reachable_station"], name: "index_station_reachables161_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables161_idx2"
    t.index ["starting_station"], name: "index_station_reachables161_on_starting_station"
  end

  create_table "station_reachables162", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables162_idx1"
    t.index ["reachable_station"], name: "index_station_reachables162_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables162_idx2"
    t.index ["starting_station"], name: "index_station_reachables162_on_starting_station"
  end

  create_table "station_reachables163", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables163_idx1"
    t.index ["reachable_station"], name: "index_station_reachables163_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables163_idx2"
    t.index ["starting_station"], name: "index_station_reachables163_on_starting_station"
  end

  create_table "station_reachables164", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables164_idx1"
    t.index ["reachable_station"], name: "index_station_reachables164_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables164_idx2"
    t.index ["starting_station"], name: "index_station_reachables164_on_starting_station"
  end

  create_table "station_reachables165", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables165_idx1"
    t.index ["reachable_station"], name: "index_station_reachables165_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables165_idx2"
    t.index ["starting_station"], name: "index_station_reachables165_on_starting_station"
  end

  create_table "station_reachables166", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables166_idx1"
    t.index ["reachable_station"], name: "index_station_reachables166_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables166_idx2"
    t.index ["starting_station"], name: "index_station_reachables166_on_starting_station"
  end

  create_table "station_reachables167", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables167_idx1"
    t.index ["reachable_station"], name: "index_station_reachables167_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables167_idx2"
    t.index ["starting_station"], name: "index_station_reachables167_on_starting_station"
  end

  create_table "station_reachables168", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables168_idx1"
    t.index ["reachable_station"], name: "index_station_reachables168_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables168_idx2"
    t.index ["starting_station"], name: "index_station_reachables168_on_starting_station"
  end

  create_table "station_reachables169", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables169_idx1"
    t.index ["reachable_station"], name: "index_station_reachables169_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables169_idx2"
    t.index ["starting_station"], name: "index_station_reachables169_on_starting_station"
  end

  create_table "station_reachables17", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables17_idx1"
    t.index ["reachable_station"], name: "index_station_reachables17_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables17_idx2"
    t.index ["starting_station"], name: "index_station_reachables17_on_starting_station"
  end

  create_table "station_reachables170", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables170_idx1"
    t.index ["reachable_station"], name: "index_station_reachables170_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables170_idx2"
    t.index ["starting_station"], name: "index_station_reachables170_on_starting_station"
  end

  create_table "station_reachables171", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables171_idx1"
    t.index ["reachable_station"], name: "index_station_reachables171_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables171_idx2"
    t.index ["starting_station"], name: "index_station_reachables171_on_starting_station"
  end

  create_table "station_reachables172", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables172_idx1"
    t.index ["reachable_station"], name: "index_station_reachables172_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables172_idx2"
    t.index ["starting_station"], name: "index_station_reachables172_on_starting_station"
  end

  create_table "station_reachables173", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables173_idx1"
    t.index ["reachable_station"], name: "index_station_reachables173_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables173_idx2"
    t.index ["starting_station"], name: "index_station_reachables173_on_starting_station"
  end

  create_table "station_reachables174", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables174_idx1"
    t.index ["reachable_station"], name: "index_station_reachables174_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables174_idx2"
    t.index ["starting_station"], name: "index_station_reachables174_on_starting_station"
  end

  create_table "station_reachables175", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables175_idx1"
    t.index ["reachable_station"], name: "index_station_reachables175_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables175_idx2"
    t.index ["starting_station"], name: "index_station_reachables175_on_starting_station"
  end

  create_table "station_reachables176", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables176_idx1"
    t.index ["reachable_station"], name: "index_station_reachables176_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables176_idx2"
    t.index ["starting_station"], name: "index_station_reachables176_on_starting_station"
  end

  create_table "station_reachables177", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables177_idx1"
    t.index ["reachable_station"], name: "index_station_reachables177_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables177_idx2"
    t.index ["starting_station"], name: "index_station_reachables177_on_starting_station"
  end

  create_table "station_reachables178", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables178_idx1"
    t.index ["reachable_station"], name: "index_station_reachables178_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables178_idx2"
    t.index ["starting_station"], name: "index_station_reachables178_on_starting_station"
  end

  create_table "station_reachables179", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables179_idx1"
    t.index ["reachable_station"], name: "index_station_reachables179_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables179_idx2"
    t.index ["starting_station"], name: "index_station_reachables179_on_starting_station"
  end

  create_table "station_reachables18", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables18_idx1"
    t.index ["reachable_station"], name: "index_station_reachables18_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables18_idx2"
    t.index ["starting_station"], name: "index_station_reachables18_on_starting_station"
  end

  create_table "station_reachables180", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables180_idx1"
    t.index ["reachable_station"], name: "index_station_reachables180_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables180_idx2"
    t.index ["starting_station"], name: "index_station_reachables180_on_starting_station"
  end

  create_table "station_reachables181", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables181_idx1"
    t.index ["reachable_station"], name: "index_station_reachables181_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables181_idx2"
    t.index ["starting_station"], name: "index_station_reachables181_on_starting_station"
  end

  create_table "station_reachables182", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables182_idx1"
    t.index ["reachable_station"], name: "index_station_reachables182_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables182_idx2"
    t.index ["starting_station"], name: "index_station_reachables182_on_starting_station"
  end

  create_table "station_reachables183", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables183_idx1"
    t.index ["reachable_station"], name: "index_station_reachables183_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables183_idx2"
    t.index ["starting_station"], name: "index_station_reachables183_on_starting_station"
  end

  create_table "station_reachables184", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables184_idx1"
    t.index ["reachable_station"], name: "index_station_reachables184_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables184_idx2"
    t.index ["starting_station"], name: "index_station_reachables184_on_starting_station"
  end

  create_table "station_reachables185", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables185_idx1"
    t.index ["reachable_station"], name: "index_station_reachables185_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables185_idx2"
    t.index ["starting_station"], name: "index_station_reachables185_on_starting_station"
  end

  create_table "station_reachables186", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables186_idx1"
    t.index ["reachable_station"], name: "index_station_reachables186_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables186_idx2"
    t.index ["starting_station"], name: "index_station_reachables186_on_starting_station"
  end

  create_table "station_reachables187", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables187_idx1"
    t.index ["reachable_station"], name: "index_station_reachables187_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables187_idx2"
    t.index ["starting_station"], name: "index_station_reachables187_on_starting_station"
  end

  create_table "station_reachables188", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables188_idx1"
    t.index ["reachable_station"], name: "index_station_reachables188_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables188_idx2"
    t.index ["starting_station"], name: "index_station_reachables188_on_starting_station"
  end

  create_table "station_reachables189", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables189_idx1"
    t.index ["reachable_station"], name: "index_station_reachables189_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables189_idx2"
    t.index ["starting_station"], name: "index_station_reachables189_on_starting_station"
  end

  create_table "station_reachables19", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables19_idx1"
    t.index ["reachable_station"], name: "index_station_reachables19_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables19_idx2"
    t.index ["starting_station"], name: "index_station_reachables19_on_starting_station"
  end

  create_table "station_reachables190", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables190_idx1"
    t.index ["reachable_station"], name: "index_station_reachables190_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables190_idx2"
    t.index ["starting_station"], name: "index_station_reachables190_on_starting_station"
  end

  create_table "station_reachables191", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables191_idx1"
    t.index ["reachable_station"], name: "index_station_reachables191_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables191_idx2"
    t.index ["starting_station"], name: "index_station_reachables191_on_starting_station"
  end

  create_table "station_reachables192", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables192_idx1"
    t.index ["reachable_station"], name: "index_station_reachables192_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables192_idx2"
    t.index ["starting_station"], name: "index_station_reachables192_on_starting_station"
  end

  create_table "station_reachables193", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables193_idx1"
    t.index ["reachable_station"], name: "index_station_reachables193_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables193_idx2"
    t.index ["starting_station"], name: "index_station_reachables193_on_starting_station"
  end

  create_table "station_reachables194", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables194_idx1"
    t.index ["reachable_station"], name: "index_station_reachables194_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables194_idx2"
    t.index ["starting_station"], name: "index_station_reachables194_on_starting_station"
  end

  create_table "station_reachables195", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables195_idx1"
    t.index ["reachable_station"], name: "index_station_reachables195_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables195_idx2"
    t.index ["starting_station"], name: "index_station_reachables195_on_starting_station"
  end

  create_table "station_reachables196", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables196_idx1"
    t.index ["reachable_station"], name: "index_station_reachables196_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables196_idx2"
    t.index ["starting_station"], name: "index_station_reachables196_on_starting_station"
  end

  create_table "station_reachables197", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables197_idx1"
    t.index ["reachable_station"], name: "index_station_reachables197_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables197_idx2"
    t.index ["starting_station"], name: "index_station_reachables197_on_starting_station"
  end

  create_table "station_reachables198", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables198_idx1"
    t.index ["reachable_station"], name: "index_station_reachables198_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables198_idx2"
    t.index ["starting_station"], name: "index_station_reachables198_on_starting_station"
  end

  create_table "station_reachables199", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables199_idx1"
    t.index ["reachable_station"], name: "index_station_reachables199_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables199_idx2"
    t.index ["starting_station"], name: "index_station_reachables199_on_starting_station"
  end

  create_table "station_reachables2", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables2_idx1"
    t.index ["reachable_station"], name: "index_station_reachables2_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables2_idx2"
    t.index ["starting_station"], name: "index_station_reachables2_on_starting_station"
  end

  create_table "station_reachables20", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables20_idx1"
    t.index ["reachable_station"], name: "index_station_reachables20_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables20_idx2"
    t.index ["starting_station"], name: "index_station_reachables20_on_starting_station"
  end

  create_table "station_reachables200", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables200_idx1"
    t.index ["reachable_station"], name: "index_station_reachables200_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables200_idx2"
    t.index ["starting_station"], name: "index_station_reachables200_on_starting_station"
  end

  create_table "station_reachables201", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables201_idx1"
    t.index ["reachable_station"], name: "index_station_reachables201_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables201_idx2"
    t.index ["starting_station"], name: "index_station_reachables201_on_starting_station"
  end

  create_table "station_reachables202", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables202_idx1"
    t.index ["reachable_station"], name: "index_station_reachables202_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables202_idx2"
    t.index ["starting_station"], name: "index_station_reachables202_on_starting_station"
  end

  create_table "station_reachables203", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables203_idx1"
    t.index ["reachable_station"], name: "index_station_reachables203_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables203_idx2"
    t.index ["starting_station"], name: "index_station_reachables203_on_starting_station"
  end

  create_table "station_reachables204", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables204_idx1"
    t.index ["reachable_station"], name: "index_station_reachables204_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables204_idx2"
    t.index ["starting_station"], name: "index_station_reachables204_on_starting_station"
  end

  create_table "station_reachables205", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables205_idx1"
    t.index ["reachable_station"], name: "index_station_reachables205_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables205_idx2"
    t.index ["starting_station"], name: "index_station_reachables205_on_starting_station"
  end

  create_table "station_reachables206", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables206_idx1"
    t.index ["reachable_station"], name: "index_station_reachables206_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables206_idx2"
    t.index ["starting_station"], name: "index_station_reachables206_on_starting_station"
  end

  create_table "station_reachables207", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables207_idx1"
    t.index ["reachable_station"], name: "index_station_reachables207_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables207_idx2"
    t.index ["starting_station"], name: "index_station_reachables207_on_starting_station"
  end

  create_table "station_reachables208", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables208_idx1"
    t.index ["reachable_station"], name: "index_station_reachables208_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables208_idx2"
    t.index ["starting_station"], name: "index_station_reachables208_on_starting_station"
  end

  create_table "station_reachables209", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables209_idx1"
    t.index ["reachable_station"], name: "index_station_reachables209_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables209_idx2"
    t.index ["starting_station"], name: "index_station_reachables209_on_starting_station"
  end

  create_table "station_reachables21", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables21_idx1"
    t.index ["reachable_station"], name: "index_station_reachables21_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables21_idx2"
    t.index ["starting_station"], name: "index_station_reachables21_on_starting_station"
  end

  create_table "station_reachables210", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables210_idx1"
    t.index ["reachable_station"], name: "index_station_reachables210_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables210_idx2"
    t.index ["starting_station"], name: "index_station_reachables210_on_starting_station"
  end

  create_table "station_reachables211", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables211_idx1"
    t.index ["reachable_station"], name: "index_station_reachables211_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables211_idx2"
    t.index ["starting_station"], name: "index_station_reachables211_on_starting_station"
  end

  create_table "station_reachables212", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables212_idx1"
    t.index ["reachable_station"], name: "index_station_reachables212_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables212_idx2"
    t.index ["starting_station"], name: "index_station_reachables212_on_starting_station"
  end

  create_table "station_reachables213", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables213_idx1"
    t.index ["reachable_station"], name: "index_station_reachables213_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables213_idx2"
    t.index ["starting_station"], name: "index_station_reachables213_on_starting_station"
  end

  create_table "station_reachables214", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables214_idx1"
    t.index ["reachable_station"], name: "index_station_reachables214_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables214_idx2"
    t.index ["starting_station"], name: "index_station_reachables214_on_starting_station"
  end

  create_table "station_reachables215", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables215_idx1"
    t.index ["reachable_station"], name: "index_station_reachables215_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables215_idx2"
    t.index ["starting_station"], name: "index_station_reachables215_on_starting_station"
  end

  create_table "station_reachables216", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables216_idx1"
    t.index ["reachable_station"], name: "index_station_reachables216_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables216_idx2"
    t.index ["starting_station"], name: "index_station_reachables216_on_starting_station"
  end

  create_table "station_reachables217", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables217_idx1"
    t.index ["reachable_station"], name: "index_station_reachables217_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables217_idx2"
    t.index ["starting_station"], name: "index_station_reachables217_on_starting_station"
  end

  create_table "station_reachables218", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables218_idx1"
    t.index ["reachable_station"], name: "index_station_reachables218_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables218_idx2"
    t.index ["starting_station"], name: "index_station_reachables218_on_starting_station"
  end

  create_table "station_reachables219", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables219_idx1"
    t.index ["reachable_station"], name: "index_station_reachables219_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables219_idx2"
    t.index ["starting_station"], name: "index_station_reachables219_on_starting_station"
  end

  create_table "station_reachables22", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables22_idx1"
    t.index ["reachable_station"], name: "index_station_reachables22_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables22_idx2"
    t.index ["starting_station"], name: "index_station_reachables22_on_starting_station"
  end

  create_table "station_reachables220", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables220_idx1"
    t.index ["reachable_station"], name: "index_station_reachables220_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables220_idx2"
    t.index ["starting_station"], name: "index_station_reachables220_on_starting_station"
  end

  create_table "station_reachables221", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables221_idx1"
    t.index ["reachable_station"], name: "index_station_reachables221_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables221_idx2"
    t.index ["starting_station"], name: "index_station_reachables221_on_starting_station"
  end

  create_table "station_reachables222", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables222_idx1"
    t.index ["reachable_station"], name: "index_station_reachables222_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables222_idx2"
    t.index ["starting_station"], name: "index_station_reachables222_on_starting_station"
  end

  create_table "station_reachables223", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables223_idx1"
    t.index ["reachable_station"], name: "index_station_reachables223_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables223_idx2"
    t.index ["starting_station"], name: "index_station_reachables223_on_starting_station"
  end

  create_table "station_reachables224", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables224_idx1"
    t.index ["reachable_station"], name: "index_station_reachables224_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables224_idx2"
    t.index ["starting_station"], name: "index_station_reachables224_on_starting_station"
  end

  create_table "station_reachables225", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables225_idx1"
    t.index ["reachable_station"], name: "index_station_reachables225_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables225_idx2"
    t.index ["starting_station"], name: "index_station_reachables225_on_starting_station"
  end

  create_table "station_reachables226", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables226_idx1"
    t.index ["reachable_station"], name: "index_station_reachables226_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables226_idx2"
    t.index ["starting_station"], name: "index_station_reachables226_on_starting_station"
  end

  create_table "station_reachables227", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables227_idx1"
    t.index ["reachable_station"], name: "index_station_reachables227_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables227_idx2"
    t.index ["starting_station"], name: "index_station_reachables227_on_starting_station"
  end

  create_table "station_reachables228", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables228_idx1"
    t.index ["reachable_station"], name: "index_station_reachables228_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables228_idx2"
    t.index ["starting_station"], name: "index_station_reachables228_on_starting_station"
  end

  create_table "station_reachables229", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables229_idx1"
    t.index ["reachable_station"], name: "index_station_reachables229_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables229_idx2"
    t.index ["starting_station"], name: "index_station_reachables229_on_starting_station"
  end

  create_table "station_reachables23", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables23_idx1"
    t.index ["reachable_station"], name: "index_station_reachables23_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables23_idx2"
    t.index ["starting_station"], name: "index_station_reachables23_on_starting_station"
  end

  create_table "station_reachables230", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables230_idx1"
    t.index ["reachable_station"], name: "index_station_reachables230_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables230_idx2"
    t.index ["starting_station"], name: "index_station_reachables230_on_starting_station"
  end

  create_table "station_reachables231", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables231_idx1"
    t.index ["reachable_station"], name: "index_station_reachables231_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables231_idx2"
    t.index ["starting_station"], name: "index_station_reachables231_on_starting_station"
  end

  create_table "station_reachables232", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables232_idx1"
    t.index ["reachable_station"], name: "index_station_reachables232_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables232_idx2"
    t.index ["starting_station"], name: "index_station_reachables232_on_starting_station"
  end

  create_table "station_reachables233", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables233_idx1"
    t.index ["reachable_station"], name: "index_station_reachables233_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables233_idx2"
    t.index ["starting_station"], name: "index_station_reachables233_on_starting_station"
  end

  create_table "station_reachables234", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables234_idx1"
    t.index ["reachable_station"], name: "index_station_reachables234_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables234_idx2"
    t.index ["starting_station"], name: "index_station_reachables234_on_starting_station"
  end

  create_table "station_reachables235", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables235_idx1"
    t.index ["reachable_station"], name: "index_station_reachables235_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables235_idx2"
    t.index ["starting_station"], name: "index_station_reachables235_on_starting_station"
  end

  create_table "station_reachables236", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables236_idx1"
    t.index ["reachable_station"], name: "index_station_reachables236_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables236_idx2"
    t.index ["starting_station"], name: "index_station_reachables236_on_starting_station"
  end

  create_table "station_reachables237", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables237_idx1"
    t.index ["reachable_station"], name: "index_station_reachables237_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables237_idx2"
    t.index ["starting_station"], name: "index_station_reachables237_on_starting_station"
  end

  create_table "station_reachables238", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables238_idx1"
    t.index ["reachable_station"], name: "index_station_reachables238_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables238_idx2"
    t.index ["starting_station"], name: "index_station_reachables238_on_starting_station"
  end

  create_table "station_reachables239", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables239_idx1"
    t.index ["reachable_station"], name: "index_station_reachables239_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables239_idx2"
    t.index ["starting_station"], name: "index_station_reachables239_on_starting_station"
  end

  create_table "station_reachables24", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables24_idx1"
    t.index ["reachable_station"], name: "index_station_reachables24_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables24_idx2"
    t.index ["starting_station"], name: "index_station_reachables24_on_starting_station"
  end

  create_table "station_reachables240", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables240_idx1"
    t.index ["reachable_station"], name: "index_station_reachables240_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables240_idx2"
    t.index ["starting_station"], name: "index_station_reachables240_on_starting_station"
  end

  create_table "station_reachables241", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables241_idx1"
    t.index ["reachable_station"], name: "index_station_reachables241_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables241_idx2"
    t.index ["starting_station"], name: "index_station_reachables241_on_starting_station"
  end

  create_table "station_reachables242", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables242_idx1"
    t.index ["reachable_station"], name: "index_station_reachables242_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables242_idx2"
    t.index ["starting_station"], name: "index_station_reachables242_on_starting_station"
  end

  create_table "station_reachables243", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables243_idx1"
    t.index ["reachable_station"], name: "index_station_reachables243_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables243_idx2"
    t.index ["starting_station"], name: "index_station_reachables243_on_starting_station"
  end

  create_table "station_reachables244", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables244_idx1"
    t.index ["reachable_station"], name: "index_station_reachables244_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables244_idx2"
    t.index ["starting_station"], name: "index_station_reachables244_on_starting_station"
  end

  create_table "station_reachables245", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables245_idx1"
    t.index ["reachable_station"], name: "index_station_reachables245_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables245_idx2"
    t.index ["starting_station"], name: "index_station_reachables245_on_starting_station"
  end

  create_table "station_reachables246", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables246_idx1"
    t.index ["reachable_station"], name: "index_station_reachables246_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables246_idx2"
    t.index ["starting_station"], name: "index_station_reachables246_on_starting_station"
  end

  create_table "station_reachables247", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables247_idx1"
    t.index ["reachable_station"], name: "index_station_reachables247_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables247_idx2"
    t.index ["starting_station"], name: "index_station_reachables247_on_starting_station"
  end

  create_table "station_reachables248", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables248_idx1"
    t.index ["reachable_station"], name: "index_station_reachables248_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables248_idx2"
    t.index ["starting_station"], name: "index_station_reachables248_on_starting_station"
  end

  create_table "station_reachables249", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables249_idx1"
    t.index ["reachable_station"], name: "index_station_reachables249_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables249_idx2"
    t.index ["starting_station"], name: "index_station_reachables249_on_starting_station"
  end

  create_table "station_reachables25", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables25_idx1"
    t.index ["reachable_station"], name: "index_station_reachables25_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables25_idx2"
    t.index ["starting_station"], name: "index_station_reachables25_on_starting_station"
  end

  create_table "station_reachables250", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables250_idx1"
    t.index ["reachable_station"], name: "index_station_reachables250_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables250_idx2"
    t.index ["starting_station"], name: "index_station_reachables250_on_starting_station"
  end

  create_table "station_reachables251", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables251_idx1"
    t.index ["reachable_station"], name: "index_station_reachables251_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables251_idx2"
    t.index ["starting_station"], name: "index_station_reachables251_on_starting_station"
  end

  create_table "station_reachables252", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables252_idx1"
    t.index ["reachable_station"], name: "index_station_reachables252_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables252_idx2"
    t.index ["starting_station"], name: "index_station_reachables252_on_starting_station"
  end

  create_table "station_reachables253", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables253_idx1"
    t.index ["reachable_station"], name: "index_station_reachables253_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables253_idx2"
    t.index ["starting_station"], name: "index_station_reachables253_on_starting_station"
  end

  create_table "station_reachables254", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables254_idx1"
    t.index ["reachable_station"], name: "index_station_reachables254_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables254_idx2"
    t.index ["starting_station"], name: "index_station_reachables254_on_starting_station"
  end

  create_table "station_reachables255", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables255_idx1"
    t.index ["reachable_station"], name: "index_station_reachables255_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables255_idx2"
    t.index ["starting_station"], name: "index_station_reachables255_on_starting_station"
  end

  create_table "station_reachables256", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables256_idx1"
    t.index ["reachable_station"], name: "index_station_reachables256_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables256_idx2"
    t.index ["starting_station"], name: "index_station_reachables256_on_starting_station"
  end

  create_table "station_reachables257", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables257_idx1"
    t.index ["reachable_station"], name: "index_station_reachables257_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables257_idx2"
    t.index ["starting_station"], name: "index_station_reachables257_on_starting_station"
  end

  create_table "station_reachables258", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables258_idx1"
    t.index ["reachable_station"], name: "index_station_reachables258_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables258_idx2"
    t.index ["starting_station"], name: "index_station_reachables258_on_starting_station"
  end

  create_table "station_reachables259", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables259_idx1"
    t.index ["reachable_station"], name: "index_station_reachables259_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables259_idx2"
    t.index ["starting_station"], name: "index_station_reachables259_on_starting_station"
  end

  create_table "station_reachables26", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables26_idx1"
    t.index ["reachable_station"], name: "index_station_reachables26_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables26_idx2"
    t.index ["starting_station"], name: "index_station_reachables26_on_starting_station"
  end

  create_table "station_reachables260", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables260_idx1"
    t.index ["reachable_station"], name: "index_station_reachables260_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables260_idx2"
    t.index ["starting_station"], name: "index_station_reachables260_on_starting_station"
  end

  create_table "station_reachables261", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables261_idx1"
    t.index ["reachable_station"], name: "index_station_reachables261_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables261_idx2"
    t.index ["starting_station"], name: "index_station_reachables261_on_starting_station"
  end

  create_table "station_reachables262", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables262_idx1"
    t.index ["reachable_station"], name: "index_station_reachables262_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables262_idx2"
    t.index ["starting_station"], name: "index_station_reachables262_on_starting_station"
  end

  create_table "station_reachables263", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables263_idx1"
    t.index ["reachable_station"], name: "index_station_reachables263_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables263_idx2"
    t.index ["starting_station"], name: "index_station_reachables263_on_starting_station"
  end

  create_table "station_reachables264", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables264_idx1"
    t.index ["reachable_station"], name: "index_station_reachables264_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables264_idx2"
    t.index ["starting_station"], name: "index_station_reachables264_on_starting_station"
  end

  create_table "station_reachables265", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables265_idx1"
    t.index ["reachable_station"], name: "index_station_reachables265_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables265_idx2"
    t.index ["starting_station"], name: "index_station_reachables265_on_starting_station"
  end

  create_table "station_reachables266", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables266_idx1"
    t.index ["reachable_station"], name: "index_station_reachables266_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables266_idx2"
    t.index ["starting_station"], name: "index_station_reachables266_on_starting_station"
  end

  create_table "station_reachables267", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables267_idx1"
    t.index ["reachable_station"], name: "index_station_reachables267_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables267_idx2"
    t.index ["starting_station"], name: "index_station_reachables267_on_starting_station"
  end

  create_table "station_reachables268", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables268_idx1"
    t.index ["reachable_station"], name: "index_station_reachables268_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables268_idx2"
    t.index ["starting_station"], name: "index_station_reachables268_on_starting_station"
  end

  create_table "station_reachables269", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables269_idx1"
    t.index ["reachable_station"], name: "index_station_reachables269_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables269_idx2"
    t.index ["starting_station"], name: "index_station_reachables269_on_starting_station"
  end

  create_table "station_reachables27", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables27_idx1"
    t.index ["reachable_station"], name: "index_station_reachables27_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables27_idx2"
    t.index ["starting_station"], name: "index_station_reachables27_on_starting_station"
  end

  create_table "station_reachables270", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables270_idx1"
    t.index ["reachable_station"], name: "index_station_reachables270_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables270_idx2"
    t.index ["starting_station"], name: "index_station_reachables270_on_starting_station"
  end

  create_table "station_reachables271", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables271_idx1"
    t.index ["reachable_station"], name: "index_station_reachables271_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables271_idx2"
    t.index ["starting_station"], name: "index_station_reachables271_on_starting_station"
  end

  create_table "station_reachables272", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables272_idx1"
    t.index ["reachable_station"], name: "index_station_reachables272_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables272_idx2"
    t.index ["starting_station"], name: "index_station_reachables272_on_starting_station"
  end

  create_table "station_reachables273", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables273_idx1"
    t.index ["reachable_station"], name: "index_station_reachables273_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables273_idx2"
    t.index ["starting_station"], name: "index_station_reachables273_on_starting_station"
  end

  create_table "station_reachables274", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables274_idx1"
    t.index ["reachable_station"], name: "index_station_reachables274_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables274_idx2"
    t.index ["starting_station"], name: "index_station_reachables274_on_starting_station"
  end

  create_table "station_reachables275", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables275_idx1"
    t.index ["reachable_station"], name: "index_station_reachables275_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables275_idx2"
    t.index ["starting_station"], name: "index_station_reachables275_on_starting_station"
  end

  create_table "station_reachables276", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables276_idx1"
    t.index ["reachable_station"], name: "index_station_reachables276_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables276_idx2"
    t.index ["starting_station"], name: "index_station_reachables276_on_starting_station"
  end

  create_table "station_reachables277", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables277_idx1"
    t.index ["reachable_station"], name: "index_station_reachables277_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables277_idx2"
    t.index ["starting_station"], name: "index_station_reachables277_on_starting_station"
  end

  create_table "station_reachables278", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables278_idx1"
    t.index ["reachable_station"], name: "index_station_reachables278_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables278_idx2"
    t.index ["starting_station"], name: "index_station_reachables278_on_starting_station"
  end

  create_table "station_reachables279", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables279_idx1"
    t.index ["reachable_station"], name: "index_station_reachables279_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables279_idx2"
    t.index ["starting_station"], name: "index_station_reachables279_on_starting_station"
  end

  create_table "station_reachables28", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables28_idx1"
    t.index ["reachable_station"], name: "index_station_reachables28_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables28_idx2"
    t.index ["starting_station"], name: "index_station_reachables28_on_starting_station"
  end

  create_table "station_reachables280", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables280_idx1"
    t.index ["reachable_station"], name: "index_station_reachables280_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables280_idx2"
    t.index ["starting_station"], name: "index_station_reachables280_on_starting_station"
  end

  create_table "station_reachables281", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables281_idx1"
    t.index ["reachable_station"], name: "index_station_reachables281_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables281_idx2"
    t.index ["starting_station"], name: "index_station_reachables281_on_starting_station"
  end

  create_table "station_reachables282", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables282_idx1"
    t.index ["reachable_station"], name: "index_station_reachables282_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables282_idx2"
    t.index ["starting_station"], name: "index_station_reachables282_on_starting_station"
  end

  create_table "station_reachables283", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables283_idx1"
    t.index ["reachable_station"], name: "index_station_reachables283_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables283_idx2"
    t.index ["starting_station"], name: "index_station_reachables283_on_starting_station"
  end

  create_table "station_reachables284", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables284_idx1"
    t.index ["reachable_station"], name: "index_station_reachables284_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables284_idx2"
    t.index ["starting_station"], name: "index_station_reachables284_on_starting_station"
  end

  create_table "station_reachables285", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables285_idx1"
    t.index ["reachable_station"], name: "index_station_reachables285_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables285_idx2"
    t.index ["starting_station"], name: "index_station_reachables285_on_starting_station"
  end

  create_table "station_reachables286", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables286_idx1"
    t.index ["reachable_station"], name: "index_station_reachables286_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables286_idx2"
    t.index ["starting_station"], name: "index_station_reachables286_on_starting_station"
  end

  create_table "station_reachables287", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables287_idx1"
    t.index ["reachable_station"], name: "index_station_reachables287_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables287_idx2"
    t.index ["starting_station"], name: "index_station_reachables287_on_starting_station"
  end

  create_table "station_reachables288", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables288_idx1"
    t.index ["reachable_station"], name: "index_station_reachables288_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables288_idx2"
    t.index ["starting_station"], name: "index_station_reachables288_on_starting_station"
  end

  create_table "station_reachables289", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables289_idx1"
    t.index ["reachable_station"], name: "index_station_reachables289_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables289_idx2"
    t.index ["starting_station"], name: "index_station_reachables289_on_starting_station"
  end

  create_table "station_reachables29", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables29_idx1"
    t.index ["reachable_station"], name: "index_station_reachables29_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables29_idx2"
    t.index ["starting_station"], name: "index_station_reachables29_on_starting_station"
  end

  create_table "station_reachables290", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables290_idx1"
    t.index ["reachable_station"], name: "index_station_reachables290_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables290_idx2"
    t.index ["starting_station"], name: "index_station_reachables290_on_starting_station"
  end

  create_table "station_reachables291", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables291_idx1"
    t.index ["reachable_station"], name: "index_station_reachables291_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables291_idx2"
    t.index ["starting_station"], name: "index_station_reachables291_on_starting_station"
  end

  create_table "station_reachables292", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables292_idx1"
    t.index ["reachable_station"], name: "index_station_reachables292_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables292_idx2"
    t.index ["starting_station"], name: "index_station_reachables292_on_starting_station"
  end

  create_table "station_reachables293", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables293_idx1"
    t.index ["reachable_station"], name: "index_station_reachables293_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables293_idx2"
    t.index ["starting_station"], name: "index_station_reachables293_on_starting_station"
  end

  create_table "station_reachables294", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables294_idx1"
    t.index ["reachable_station"], name: "index_station_reachables294_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables294_idx2"
    t.index ["starting_station"], name: "index_station_reachables294_on_starting_station"
  end

  create_table "station_reachables295", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables295_idx1"
    t.index ["reachable_station"], name: "index_station_reachables295_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables295_idx2"
    t.index ["starting_station"], name: "index_station_reachables295_on_starting_station"
  end

  create_table "station_reachables296", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables296_idx1"
    t.index ["reachable_station"], name: "index_station_reachables296_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables296_idx2"
    t.index ["starting_station"], name: "index_station_reachables296_on_starting_station"
  end

  create_table "station_reachables297", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables297_idx1"
    t.index ["reachable_station"], name: "index_station_reachables297_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables297_idx2"
    t.index ["starting_station"], name: "index_station_reachables297_on_starting_station"
  end

  create_table "station_reachables298", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables298_idx1"
    t.index ["reachable_station"], name: "index_station_reachables298_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables298_idx2"
    t.index ["starting_station"], name: "index_station_reachables298_on_starting_station"
  end

  create_table "station_reachables299", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables299_idx1"
    t.index ["reachable_station"], name: "index_station_reachables299_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables299_idx2"
    t.index ["starting_station"], name: "index_station_reachables299_on_starting_station"
  end

  create_table "station_reachables3", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables3_idx1"
    t.index ["reachable_station"], name: "index_station_reachables3_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables3_idx2"
    t.index ["starting_station"], name: "index_station_reachables3_on_starting_station"
  end

  create_table "station_reachables30", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables30_idx1"
    t.index ["reachable_station"], name: "index_station_reachables30_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables30_idx2"
    t.index ["starting_station"], name: "index_station_reachables30_on_starting_station"
  end

  create_table "station_reachables300", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables300_idx1"
    t.index ["reachable_station"], name: "index_station_reachables300_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables300_idx2"
    t.index ["starting_station"], name: "index_station_reachables300_on_starting_station"
  end

  create_table "station_reachables301", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables301_idx1"
    t.index ["reachable_station"], name: "index_station_reachables301_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables301_idx2"
    t.index ["starting_station"], name: "index_station_reachables301_on_starting_station"
  end

  create_table "station_reachables302", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables302_idx1"
    t.index ["reachable_station"], name: "index_station_reachables302_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables302_idx2"
    t.index ["starting_station"], name: "index_station_reachables302_on_starting_station"
  end

  create_table "station_reachables303", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables303_idx1"
    t.index ["reachable_station"], name: "index_station_reachables303_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables303_idx2"
    t.index ["starting_station"], name: "index_station_reachables303_on_starting_station"
  end

  create_table "station_reachables304", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables304_idx1"
    t.index ["reachable_station"], name: "index_station_reachables304_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables304_idx2"
    t.index ["starting_station"], name: "index_station_reachables304_on_starting_station"
  end

  create_table "station_reachables305", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables305_idx1"
    t.index ["reachable_station"], name: "index_station_reachables305_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables305_idx2"
    t.index ["starting_station"], name: "index_station_reachables305_on_starting_station"
  end

  create_table "station_reachables306", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables306_idx1"
    t.index ["reachable_station"], name: "index_station_reachables306_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables306_idx2"
    t.index ["starting_station"], name: "index_station_reachables306_on_starting_station"
  end

  create_table "station_reachables307", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables307_idx1"
    t.index ["reachable_station"], name: "index_station_reachables307_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables307_idx2"
    t.index ["starting_station"], name: "index_station_reachables307_on_starting_station"
  end

  create_table "station_reachables308", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables308_idx1"
    t.index ["reachable_station"], name: "index_station_reachables308_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables308_idx2"
    t.index ["starting_station"], name: "index_station_reachables308_on_starting_station"
  end

  create_table "station_reachables309", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables309_idx1"
    t.index ["reachable_station"], name: "index_station_reachables309_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables309_idx2"
    t.index ["starting_station"], name: "index_station_reachables309_on_starting_station"
  end

  create_table "station_reachables31", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables31_idx1"
    t.index ["reachable_station"], name: "index_station_reachables31_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables31_idx2"
    t.index ["starting_station"], name: "index_station_reachables31_on_starting_station"
  end

  create_table "station_reachables310", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables310_idx1"
    t.index ["reachable_station"], name: "index_station_reachables310_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables310_idx2"
    t.index ["starting_station"], name: "index_station_reachables310_on_starting_station"
  end

  create_table "station_reachables311", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables311_idx1"
    t.index ["reachable_station"], name: "index_station_reachables311_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables311_idx2"
    t.index ["starting_station"], name: "index_station_reachables311_on_starting_station"
  end

  create_table "station_reachables312", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables312_idx1"
    t.index ["reachable_station"], name: "index_station_reachables312_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables312_idx2"
    t.index ["starting_station"], name: "index_station_reachables312_on_starting_station"
  end

  create_table "station_reachables313", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables313_idx1"
    t.index ["reachable_station"], name: "index_station_reachables313_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables313_idx2"
    t.index ["starting_station"], name: "index_station_reachables313_on_starting_station"
  end

  create_table "station_reachables314", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables314_idx1"
    t.index ["reachable_station"], name: "index_station_reachables314_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables314_idx2"
    t.index ["starting_station"], name: "index_station_reachables314_on_starting_station"
  end

  create_table "station_reachables315", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables315_idx1"
    t.index ["reachable_station"], name: "index_station_reachables315_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables315_idx2"
    t.index ["starting_station"], name: "index_station_reachables315_on_starting_station"
  end

  create_table "station_reachables316", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables316_idx1"
    t.index ["reachable_station"], name: "index_station_reachables316_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables316_idx2"
    t.index ["starting_station"], name: "index_station_reachables316_on_starting_station"
  end

  create_table "station_reachables317", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables317_idx1"
    t.index ["reachable_station"], name: "index_station_reachables317_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables317_idx2"
    t.index ["starting_station"], name: "index_station_reachables317_on_starting_station"
  end

  create_table "station_reachables318", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables318_idx1"
    t.index ["reachable_station"], name: "index_station_reachables318_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables318_idx2"
    t.index ["starting_station"], name: "index_station_reachables318_on_starting_station"
  end

  create_table "station_reachables319", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables319_idx1"
    t.index ["reachable_station"], name: "index_station_reachables319_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables319_idx2"
    t.index ["starting_station"], name: "index_station_reachables319_on_starting_station"
  end

  create_table "station_reachables32", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables32_idx1"
    t.index ["reachable_station"], name: "index_station_reachables32_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables32_idx2"
    t.index ["starting_station"], name: "index_station_reachables32_on_starting_station"
  end

  create_table "station_reachables320", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables320_idx1"
    t.index ["reachable_station"], name: "index_station_reachables320_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables320_idx2"
    t.index ["starting_station"], name: "index_station_reachables320_on_starting_station"
  end

  create_table "station_reachables321", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables321_idx1"
    t.index ["reachable_station"], name: "index_station_reachables321_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables321_idx2"
    t.index ["starting_station"], name: "index_station_reachables321_on_starting_station"
  end

  create_table "station_reachables322", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables322_idx1"
    t.index ["reachable_station"], name: "index_station_reachables322_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables322_idx2"
    t.index ["starting_station"], name: "index_station_reachables322_on_starting_station"
  end

  create_table "station_reachables323", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables323_idx1"
    t.index ["reachable_station"], name: "index_station_reachables323_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables323_idx2"
    t.index ["starting_station"], name: "index_station_reachables323_on_starting_station"
  end

  create_table "station_reachables324", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables324_idx1"
    t.index ["reachable_station"], name: "index_station_reachables324_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables324_idx2"
    t.index ["starting_station"], name: "index_station_reachables324_on_starting_station"
  end

  create_table "station_reachables325", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables325_idx1"
    t.index ["reachable_station"], name: "index_station_reachables325_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables325_idx2"
    t.index ["starting_station"], name: "index_station_reachables325_on_starting_station"
  end

  create_table "station_reachables326", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables326_idx1"
    t.index ["reachable_station"], name: "index_station_reachables326_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables326_idx2"
    t.index ["starting_station"], name: "index_station_reachables326_on_starting_station"
  end

  create_table "station_reachables327", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables327_idx1"
    t.index ["reachable_station"], name: "index_station_reachables327_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables327_idx2"
    t.index ["starting_station"], name: "index_station_reachables327_on_starting_station"
  end

  create_table "station_reachables328", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables328_idx1"
    t.index ["reachable_station"], name: "index_station_reachables328_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables328_idx2"
    t.index ["starting_station"], name: "index_station_reachables328_on_starting_station"
  end

  create_table "station_reachables329", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables329_idx1"
    t.index ["reachable_station"], name: "index_station_reachables329_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables329_idx2"
    t.index ["starting_station"], name: "index_station_reachables329_on_starting_station"
  end

  create_table "station_reachables33", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables33_idx1"
    t.index ["reachable_station"], name: "index_station_reachables33_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables33_idx2"
    t.index ["starting_station"], name: "index_station_reachables33_on_starting_station"
  end

  create_table "station_reachables330", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables330_idx1"
    t.index ["reachable_station"], name: "index_station_reachables330_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables330_idx2"
    t.index ["starting_station"], name: "index_station_reachables330_on_starting_station"
  end

  create_table "station_reachables331", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables331_idx1"
    t.index ["reachable_station"], name: "index_station_reachables331_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables331_idx2"
    t.index ["starting_station"], name: "index_station_reachables331_on_starting_station"
  end

  create_table "station_reachables332", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables332_idx1"
    t.index ["reachable_station"], name: "index_station_reachables332_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables332_idx2"
    t.index ["starting_station"], name: "index_station_reachables332_on_starting_station"
  end

  create_table "station_reachables333", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables333_idx1"
    t.index ["reachable_station"], name: "index_station_reachables333_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables333_idx2"
    t.index ["starting_station"], name: "index_station_reachables333_on_starting_station"
  end

  create_table "station_reachables334", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables334_idx1"
    t.index ["reachable_station"], name: "index_station_reachables334_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables334_idx2"
    t.index ["starting_station"], name: "index_station_reachables334_on_starting_station"
  end

  create_table "station_reachables335", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables335_idx1"
    t.index ["reachable_station"], name: "index_station_reachables335_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables335_idx2"
    t.index ["starting_station"], name: "index_station_reachables335_on_starting_station"
  end

  create_table "station_reachables336", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables336_idx1"
    t.index ["reachable_station"], name: "index_station_reachables336_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables336_idx2"
    t.index ["starting_station"], name: "index_station_reachables336_on_starting_station"
  end

  create_table "station_reachables337", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables337_idx1"
    t.index ["reachable_station"], name: "index_station_reachables337_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables337_idx2"
    t.index ["starting_station"], name: "index_station_reachables337_on_starting_station"
  end

  create_table "station_reachables338", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables338_idx1"
    t.index ["reachable_station"], name: "index_station_reachables338_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables338_idx2"
    t.index ["starting_station"], name: "index_station_reachables338_on_starting_station"
  end

  create_table "station_reachables339", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables339_idx1"
    t.index ["reachable_station"], name: "index_station_reachables339_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables339_idx2"
    t.index ["starting_station"], name: "index_station_reachables339_on_starting_station"
  end

  create_table "station_reachables34", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables34_idx1"
    t.index ["reachable_station"], name: "index_station_reachables34_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables34_idx2"
    t.index ["starting_station"], name: "index_station_reachables34_on_starting_station"
  end

  create_table "station_reachables340", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables340_idx1"
    t.index ["reachable_station"], name: "index_station_reachables340_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables340_idx2"
    t.index ["starting_station"], name: "index_station_reachables340_on_starting_station"
  end

  create_table "station_reachables341", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables341_idx1"
    t.index ["reachable_station"], name: "index_station_reachables341_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables341_idx2"
    t.index ["starting_station"], name: "index_station_reachables341_on_starting_station"
  end

  create_table "station_reachables342", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables342_idx1"
    t.index ["reachable_station"], name: "index_station_reachables342_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables342_idx2"
    t.index ["starting_station"], name: "index_station_reachables342_on_starting_station"
  end

  create_table "station_reachables343", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables343_idx1"
    t.index ["reachable_station"], name: "index_station_reachables343_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables343_idx2"
    t.index ["starting_station"], name: "index_station_reachables343_on_starting_station"
  end

  create_table "station_reachables344", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables344_idx1"
    t.index ["reachable_station"], name: "index_station_reachables344_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables344_idx2"
    t.index ["starting_station"], name: "index_station_reachables344_on_starting_station"
  end

  create_table "station_reachables345", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables345_idx1"
    t.index ["reachable_station"], name: "index_station_reachables345_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables345_idx2"
    t.index ["starting_station"], name: "index_station_reachables345_on_starting_station"
  end

  create_table "station_reachables346", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables346_idx1"
    t.index ["reachable_station"], name: "index_station_reachables346_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables346_idx2"
    t.index ["starting_station"], name: "index_station_reachables346_on_starting_station"
  end

  create_table "station_reachables347", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables347_idx1"
    t.index ["reachable_station"], name: "index_station_reachables347_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables347_idx2"
    t.index ["starting_station"], name: "index_station_reachables347_on_starting_station"
  end

  create_table "station_reachables348", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables348_idx1"
    t.index ["reachable_station"], name: "index_station_reachables348_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables348_idx2"
    t.index ["starting_station"], name: "index_station_reachables348_on_starting_station"
  end

  create_table "station_reachables349", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables349_idx1"
    t.index ["reachable_station"], name: "index_station_reachables349_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables349_idx2"
    t.index ["starting_station"], name: "index_station_reachables349_on_starting_station"
  end

  create_table "station_reachables35", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables35_idx1"
    t.index ["reachable_station"], name: "index_station_reachables35_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables35_idx2"
    t.index ["starting_station"], name: "index_station_reachables35_on_starting_station"
  end

  create_table "station_reachables350", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables350_idx1"
    t.index ["reachable_station"], name: "index_station_reachables350_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables350_idx2"
    t.index ["starting_station"], name: "index_station_reachables350_on_starting_station"
  end

  create_table "station_reachables351", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables351_idx1"
    t.index ["reachable_station"], name: "index_station_reachables351_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables351_idx2"
    t.index ["starting_station"], name: "index_station_reachables351_on_starting_station"
  end

  create_table "station_reachables352", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables352_idx1"
    t.index ["reachable_station"], name: "index_station_reachables352_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables352_idx2"
    t.index ["starting_station"], name: "index_station_reachables352_on_starting_station"
  end

  create_table "station_reachables353", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables353_idx1"
    t.index ["reachable_station"], name: "index_station_reachables353_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables353_idx2"
    t.index ["starting_station"], name: "index_station_reachables353_on_starting_station"
  end

  create_table "station_reachables354", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables354_idx1"
    t.index ["reachable_station"], name: "index_station_reachables354_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables354_idx2"
    t.index ["starting_station"], name: "index_station_reachables354_on_starting_station"
  end

  create_table "station_reachables355", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables355_idx1"
    t.index ["reachable_station"], name: "index_station_reachables355_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables355_idx2"
    t.index ["starting_station"], name: "index_station_reachables355_on_starting_station"
  end

  create_table "station_reachables356", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables356_idx1"
    t.index ["reachable_station"], name: "index_station_reachables356_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables356_idx2"
    t.index ["starting_station"], name: "index_station_reachables356_on_starting_station"
  end

  create_table "station_reachables357", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables357_idx1"
    t.index ["reachable_station"], name: "index_station_reachables357_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables357_idx2"
    t.index ["starting_station"], name: "index_station_reachables357_on_starting_station"
  end

  create_table "station_reachables358", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables358_idx1"
    t.index ["reachable_station"], name: "index_station_reachables358_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables358_idx2"
    t.index ["starting_station"], name: "index_station_reachables358_on_starting_station"
  end

  create_table "station_reachables359", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables359_idx1"
    t.index ["reachable_station"], name: "index_station_reachables359_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables359_idx2"
    t.index ["starting_station"], name: "index_station_reachables359_on_starting_station"
  end

  create_table "station_reachables36", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables36_idx1"
    t.index ["reachable_station"], name: "index_station_reachables36_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables36_idx2"
    t.index ["starting_station"], name: "index_station_reachables36_on_starting_station"
  end

  create_table "station_reachables360", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables360_idx1"
    t.index ["reachable_station"], name: "index_station_reachables360_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables360_idx2"
    t.index ["starting_station"], name: "index_station_reachables360_on_starting_station"
  end

  create_table "station_reachables361", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables361_idx1"
    t.index ["reachable_station"], name: "index_station_reachables361_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables361_idx2"
    t.index ["starting_station"], name: "index_station_reachables361_on_starting_station"
  end

  create_table "station_reachables362", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables362_idx1"
    t.index ["reachable_station"], name: "index_station_reachables362_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables362_idx2"
    t.index ["starting_station"], name: "index_station_reachables362_on_starting_station"
  end

  create_table "station_reachables363", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables363_idx1"
    t.index ["reachable_station"], name: "index_station_reachables363_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables363_idx2"
    t.index ["starting_station"], name: "index_station_reachables363_on_starting_station"
  end

  create_table "station_reachables364", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables364_idx1"
    t.index ["reachable_station"], name: "index_station_reachables364_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables364_idx2"
    t.index ["starting_station"], name: "index_station_reachables364_on_starting_station"
  end

  create_table "station_reachables365", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables365_idx1"
    t.index ["reachable_station"], name: "index_station_reachables365_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables365_idx2"
    t.index ["starting_station"], name: "index_station_reachables365_on_starting_station"
  end

  create_table "station_reachables37", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables37_idx1"
    t.index ["reachable_station"], name: "index_station_reachables37_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables37_idx2"
    t.index ["starting_station"], name: "index_station_reachables37_on_starting_station"
  end

  create_table "station_reachables38", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables38_idx1"
    t.index ["reachable_station"], name: "index_station_reachables38_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables38_idx2"
    t.index ["starting_station"], name: "index_station_reachables38_on_starting_station"
  end

  create_table "station_reachables39", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables39_idx1"
    t.index ["reachable_station"], name: "index_station_reachables39_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables39_idx2"
    t.index ["starting_station"], name: "index_station_reachables39_on_starting_station"
  end

  create_table "station_reachables4", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables4_idx1"
    t.index ["reachable_station"], name: "index_station_reachables4_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables4_idx2"
    t.index ["starting_station"], name: "index_station_reachables4_on_starting_station"
  end

  create_table "station_reachables40", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables40_idx1"
    t.index ["reachable_station"], name: "index_station_reachables40_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables40_idx2"
    t.index ["starting_station"], name: "index_station_reachables40_on_starting_station"
  end

  create_table "station_reachables41", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables41_idx1"
    t.index ["reachable_station"], name: "index_station_reachables41_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables41_idx2"
    t.index ["starting_station"], name: "index_station_reachables41_on_starting_station"
  end

  create_table "station_reachables42", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables42_idx1"
    t.index ["reachable_station"], name: "index_station_reachables42_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables42_idx2"
    t.index ["starting_station"], name: "index_station_reachables42_on_starting_station"
  end

  create_table "station_reachables43", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables43_idx1"
    t.index ["reachable_station"], name: "index_station_reachables43_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables43_idx2"
    t.index ["starting_station"], name: "index_station_reachables43_on_starting_station"
  end

  create_table "station_reachables44", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables44_idx1"
    t.index ["reachable_station"], name: "index_station_reachables44_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables44_idx2"
    t.index ["starting_station"], name: "index_station_reachables44_on_starting_station"
  end

  create_table "station_reachables45", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables45_idx1"
    t.index ["reachable_station"], name: "index_station_reachables45_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables45_idx2"
    t.index ["starting_station"], name: "index_station_reachables45_on_starting_station"
  end

  create_table "station_reachables46", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables46_idx1"
    t.index ["reachable_station"], name: "index_station_reachables46_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables46_idx2"
    t.index ["starting_station"], name: "index_station_reachables46_on_starting_station"
  end

  create_table "station_reachables47", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables47_idx1"
    t.index ["reachable_station"], name: "index_station_reachables47_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables47_idx2"
    t.index ["starting_station"], name: "index_station_reachables47_on_starting_station"
  end

  create_table "station_reachables48", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables48_idx1"
    t.index ["reachable_station"], name: "index_station_reachables48_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables48_idx2"
    t.index ["starting_station"], name: "index_station_reachables48_on_starting_station"
  end

  create_table "station_reachables49", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables49_idx1"
    t.index ["reachable_station"], name: "index_station_reachables49_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables49_idx2"
    t.index ["starting_station"], name: "index_station_reachables49_on_starting_station"
  end

  create_table "station_reachables5", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables5_idx1"
    t.index ["reachable_station"], name: "index_station_reachables5_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables5_idx2"
    t.index ["starting_station"], name: "index_station_reachables5_on_starting_station"
  end

  create_table "station_reachables50", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables50_idx1"
    t.index ["reachable_station"], name: "index_station_reachables50_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables50_idx2"
    t.index ["starting_station"], name: "index_station_reachables50_on_starting_station"
  end

  create_table "station_reachables51", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables51_idx1"
    t.index ["reachable_station"], name: "index_station_reachables51_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables51_idx2"
    t.index ["starting_station"], name: "index_station_reachables51_on_starting_station"
  end

  create_table "station_reachables52", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables52_idx1"
    t.index ["reachable_station"], name: "index_station_reachables52_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables52_idx2"
    t.index ["starting_station"], name: "index_station_reachables52_on_starting_station"
  end

  create_table "station_reachables53", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables53_idx1"
    t.index ["reachable_station"], name: "index_station_reachables53_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables53_idx2"
    t.index ["starting_station"], name: "index_station_reachables53_on_starting_station"
  end

  create_table "station_reachables54", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables54_idx1"
    t.index ["reachable_station"], name: "index_station_reachables54_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables54_idx2"
    t.index ["starting_station"], name: "index_station_reachables54_on_starting_station"
  end

  create_table "station_reachables55", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables55_idx1"
    t.index ["reachable_station"], name: "index_station_reachables55_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables55_idx2"
    t.index ["starting_station"], name: "index_station_reachables55_on_starting_station"
  end

  create_table "station_reachables56", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables56_idx1"
    t.index ["reachable_station"], name: "index_station_reachables56_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables56_idx2"
    t.index ["starting_station"], name: "index_station_reachables56_on_starting_station"
  end

  create_table "station_reachables57", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables57_idx1"
    t.index ["reachable_station"], name: "index_station_reachables57_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables57_idx2"
    t.index ["starting_station"], name: "index_station_reachables57_on_starting_station"
  end

  create_table "station_reachables58", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables58_idx1"
    t.index ["reachable_station"], name: "index_station_reachables58_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables58_idx2"
    t.index ["starting_station"], name: "index_station_reachables58_on_starting_station"
  end

  create_table "station_reachables59", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables59_idx1"
    t.index ["reachable_station"], name: "index_station_reachables59_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables59_idx2"
    t.index ["starting_station"], name: "index_station_reachables59_on_starting_station"
  end

  create_table "station_reachables6", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables6_idx1"
    t.index ["reachable_station"], name: "index_station_reachables6_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables6_idx2"
    t.index ["starting_station"], name: "index_station_reachables6_on_starting_station"
  end

  create_table "station_reachables60", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables60_idx1"
    t.index ["reachable_station"], name: "index_station_reachables60_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables60_idx2"
    t.index ["starting_station"], name: "index_station_reachables60_on_starting_station"
  end

  create_table "station_reachables61", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables61_idx1"
    t.index ["reachable_station"], name: "index_station_reachables61_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables61_idx2"
    t.index ["starting_station"], name: "index_station_reachables61_on_starting_station"
  end

  create_table "station_reachables62", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables62_idx1"
    t.index ["reachable_station"], name: "index_station_reachables62_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables62_idx2"
    t.index ["starting_station"], name: "index_station_reachables62_on_starting_station"
  end

  create_table "station_reachables63", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables63_idx1"
    t.index ["reachable_station"], name: "index_station_reachables63_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables63_idx2"
    t.index ["starting_station"], name: "index_station_reachables63_on_starting_station"
  end

  create_table "station_reachables64", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables64_idx1"
    t.index ["reachable_station"], name: "index_station_reachables64_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables64_idx2"
    t.index ["starting_station"], name: "index_station_reachables64_on_starting_station"
  end

  create_table "station_reachables65", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables65_idx1"
    t.index ["reachable_station"], name: "index_station_reachables65_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables65_idx2"
    t.index ["starting_station"], name: "index_station_reachables65_on_starting_station"
  end

  create_table "station_reachables66", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables66_idx1"
    t.index ["reachable_station"], name: "index_station_reachables66_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables66_idx2"
    t.index ["starting_station"], name: "index_station_reachables66_on_starting_station"
  end

  create_table "station_reachables67", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables67_idx1"
    t.index ["reachable_station"], name: "index_station_reachables67_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables67_idx2"
    t.index ["starting_station"], name: "index_station_reachables67_on_starting_station"
  end

  create_table "station_reachables68", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables68_idx1"
    t.index ["reachable_station"], name: "index_station_reachables68_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables68_idx2"
    t.index ["starting_station"], name: "index_station_reachables68_on_starting_station"
  end

  create_table "station_reachables69", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables69_idx1"
    t.index ["reachable_station"], name: "index_station_reachables69_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables69_idx2"
    t.index ["starting_station"], name: "index_station_reachables69_on_starting_station"
  end

  create_table "station_reachables7", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables7_idx1"
    t.index ["reachable_station"], name: "index_station_reachables7_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables7_idx2"
    t.index ["starting_station"], name: "index_station_reachables7_on_starting_station"
  end

  create_table "station_reachables70", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables70_idx1"
    t.index ["reachable_station"], name: "index_station_reachables70_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables70_idx2"
    t.index ["starting_station"], name: "index_station_reachables70_on_starting_station"
  end

  create_table "station_reachables71", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables71_idx1"
    t.index ["reachable_station"], name: "index_station_reachables71_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables71_idx2"
    t.index ["starting_station"], name: "index_station_reachables71_on_starting_station"
  end

  create_table "station_reachables72", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables72_idx1"
    t.index ["reachable_station"], name: "index_station_reachables72_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables72_idx2"
    t.index ["starting_station"], name: "index_station_reachables72_on_starting_station"
  end

  create_table "station_reachables73", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables73_idx1"
    t.index ["reachable_station"], name: "index_station_reachables73_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables73_idx2"
    t.index ["starting_station"], name: "index_station_reachables73_on_starting_station"
  end

  create_table "station_reachables74", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables74_idx1"
    t.index ["reachable_station"], name: "index_station_reachables74_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables74_idx2"
    t.index ["starting_station"], name: "index_station_reachables74_on_starting_station"
  end

  create_table "station_reachables75", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables75_idx1"
    t.index ["reachable_station"], name: "index_station_reachables75_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables75_idx2"
    t.index ["starting_station"], name: "index_station_reachables75_on_starting_station"
  end

  create_table "station_reachables76", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables76_idx1"
    t.index ["reachable_station"], name: "index_station_reachables76_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables76_idx2"
    t.index ["starting_station"], name: "index_station_reachables76_on_starting_station"
  end

  create_table "station_reachables77", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables77_idx1"
    t.index ["reachable_station"], name: "index_station_reachables77_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables77_idx2"
    t.index ["starting_station"], name: "index_station_reachables77_on_starting_station"
  end

  create_table "station_reachables78", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables78_idx1"
    t.index ["reachable_station"], name: "index_station_reachables78_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables78_idx2"
    t.index ["starting_station"], name: "index_station_reachables78_on_starting_station"
  end

  create_table "station_reachables79", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables79_idx1"
    t.index ["reachable_station"], name: "index_station_reachables79_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables79_idx2"
    t.index ["starting_station"], name: "index_station_reachables79_on_starting_station"
  end

  create_table "station_reachables8", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables8_idx1"
    t.index ["reachable_station"], name: "index_station_reachables8_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables8_idx2"
    t.index ["starting_station"], name: "index_station_reachables8_on_starting_station"
  end

  create_table "station_reachables80", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables80_idx1"
    t.index ["reachable_station"], name: "index_station_reachables80_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables80_idx2"
    t.index ["starting_station"], name: "index_station_reachables80_on_starting_station"
  end

  create_table "station_reachables81", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables81_idx1"
    t.index ["reachable_station"], name: "index_station_reachables81_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables81_idx2"
    t.index ["starting_station"], name: "index_station_reachables81_on_starting_station"
  end

  create_table "station_reachables82", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables82_idx1"
    t.index ["reachable_station"], name: "index_station_reachables82_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables82_idx2"
    t.index ["starting_station"], name: "index_station_reachables82_on_starting_station"
  end

  create_table "station_reachables83", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables83_idx1"
    t.index ["reachable_station"], name: "index_station_reachables83_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables83_idx2"
    t.index ["starting_station"], name: "index_station_reachables83_on_starting_station"
  end

  create_table "station_reachables84", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables84_idx1"
    t.index ["reachable_station"], name: "index_station_reachables84_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables84_idx2"
    t.index ["starting_station"], name: "index_station_reachables84_on_starting_station"
  end

  create_table "station_reachables85", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables85_idx1"
    t.index ["reachable_station"], name: "index_station_reachables85_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables85_idx2"
    t.index ["starting_station"], name: "index_station_reachables85_on_starting_station"
  end

  create_table "station_reachables86", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables86_idx1"
    t.index ["reachable_station"], name: "index_station_reachables86_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables86_idx2"
    t.index ["starting_station"], name: "index_station_reachables86_on_starting_station"
  end

  create_table "station_reachables87", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables87_idx1"
    t.index ["reachable_station"], name: "index_station_reachables87_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables87_idx2"
    t.index ["starting_station"], name: "index_station_reachables87_on_starting_station"
  end

  create_table "station_reachables88", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables88_idx1"
    t.index ["reachable_station"], name: "index_station_reachables88_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables88_idx2"
    t.index ["starting_station"], name: "index_station_reachables88_on_starting_station"
  end

  create_table "station_reachables89", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables89_idx1"
    t.index ["reachable_station"], name: "index_station_reachables89_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables89_idx2"
    t.index ["starting_station"], name: "index_station_reachables89_on_starting_station"
  end

  create_table "station_reachables9", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables9_idx1"
    t.index ["reachable_station"], name: "index_station_reachables9_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables9_idx2"
    t.index ["starting_station"], name: "index_station_reachables9_on_starting_station"
  end

  create_table "station_reachables90", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables90_idx1"
    t.index ["reachable_station"], name: "index_station_reachables90_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables90_idx2"
    t.index ["starting_station"], name: "index_station_reachables90_on_starting_station"
  end

  create_table "station_reachables91", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables91_idx1"
    t.index ["reachable_station"], name: "index_station_reachables91_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables91_idx2"
    t.index ["starting_station"], name: "index_station_reachables91_on_starting_station"
  end

  create_table "station_reachables92", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables92_idx1"
    t.index ["reachable_station"], name: "index_station_reachables92_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables92_idx2"
    t.index ["starting_station"], name: "index_station_reachables92_on_starting_station"
  end

  create_table "station_reachables93", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables93_idx1"
    t.index ["reachable_station"], name: "index_station_reachables93_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables93_idx2"
    t.index ["starting_station"], name: "index_station_reachables93_on_starting_station"
  end

  create_table "station_reachables94", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables94_idx1"
    t.index ["reachable_station"], name: "index_station_reachables94_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables94_idx2"
    t.index ["starting_station"], name: "index_station_reachables94_on_starting_station"
  end

  create_table "station_reachables95", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables95_idx1"
    t.index ["reachable_station"], name: "index_station_reachables95_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables95_idx2"
    t.index ["starting_station"], name: "index_station_reachables95_on_starting_station"
  end

  create_table "station_reachables96", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables96_idx1"
    t.index ["reachable_station"], name: "index_station_reachables96_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables96_idx2"
    t.index ["starting_station"], name: "index_station_reachables96_on_starting_station"
  end

  create_table "station_reachables97", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables97_idx1"
    t.index ["reachable_station"], name: "index_station_reachables97_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables97_idx2"
    t.index ["starting_station"], name: "index_station_reachables97_on_starting_station"
  end

  create_table "station_reachables98", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables98_idx1"
    t.index ["reachable_station"], name: "index_station_reachables98_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables98_idx2"
    t.index ["starting_station"], name: "index_station_reachables98_on_starting_station"
  end

  create_table "station_reachables99", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "staff_schedule_spot_available_id"
    t.string "kind"
    t.datetime "assignable_from", precision: nil
    t.datetime "assignable_to", precision: nil
    t.string "starting_station"
    t.string "reachable_station"
    t.datetime "reachable_time", precision: nil
    t.integer "minute"
    t.integer "fare"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables99_idx1"
    t.index ["reachable_station"], name: "index_station_reachables99_on_reachable_station"
    t.index ["staff_schedule_spot_available_id", "kind", "reachable_station", "assignable_from", "assignable_to", "reachable_time"], name: "index_station_reachables99_idx2"
    t.index ["starting_station"], name: "index_station_reachables99_on_starting_station"
  end

  create_table "station_route_queues", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "station"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["station"], name: "index_station_route_queues_on_station1"
  end

  create_table "station_route_tmps", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "station1"
    t.string "station2"
    t.integer "minute"
    t.integer "fare"
    t.string "route"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["minute"], name: "index_station_route_tmps_on_minute"
    t.index ["station1"], name: "index_station_route_tmps_on_station1"
    t.index ["station2"], name: "index_station_route_tmps_on_station2"
  end

  create_table "station_routes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "station1"
    t.string "station2"
    t.integer "minute"
    t.integer "fare"
    t.string "route"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["minute"], name: "index_station_routes_on_minute"
    t.index ["station1"], name: "index_station_routes_on_station1"
    t.index ["station2"], name: "index_station_routes_on_station2"
  end

  create_table "stations", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.decimal "lon", precision: 11, scale: 8
    t.decimal "lat", precision: 11, scale: 8
    t.boolean "rail", default: false, null: false
    t.boolean "update_flg", default: false, null: false
    t.integer "unit_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["name"], name: "index_stations_on_name"
  end

  create_table "tables", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taiwa_records", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "taiwa_id"
    t.integer "selected_scenario_id"
    t.text "scenario_messages"
    t.text "answer"
    t.text "option_text"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["selected_scenario_id"], name: "index_taiwa_records_on_selected_scenario_id"
    t.index ["taiwa_id"], name: "index_taiwa_records_on_taiwa_id"
  end

  create_table "taiwas", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "finish_flag"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "task_hearing_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "task_hearing_id"
    t.string "name", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["task_hearing_id"], name: "index_task_hearing_options_on_task_hearing_id"
  end

  create_table "task_hearings", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "task_id"
    t.string "question", null: false
    t.string "answer_type"
    t.string "need_type"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["task_id"], name: "index_task_hearings_on_task_id"
  end

  create_table "tasks", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "work_type", null: false
    t.string "name", null: false
    t.integer "position"
    t.string "indication"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "term_types", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.string "kind", default: "spot", null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["deleted_at"], name: "index_term_types_on_deleted_at"
  end

  create_table "ticket_instances", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "ticket_order_id"
    t.bigint "ticket_order_detail_id"
    t.bigint "ticket_id"
    t.bigint "service_ticket_id"
    t.string "status"
    t.string "ticket_code"
    t.integer "price"
    t.date "expire_at"
    t.date "service_at"
    t.date "collection_at"
    t.boolean "deposit_confirmed"
    t.integer "bank_discount_price"
    t.bigint "bill_row_id"
    t.bigint "customer_id"
    t.date "deposit_at"
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["expire_at"], name: "index_ticket_instances_on_expire_at"
    t.index ["service_ticket_id"], name: "index_ticket_instances_on_service_ticket_id"
    t.index ["ticket_code"], name: "index_ticket_instances_on_ticket_code"
    t.index ["ticket_id", "ticket_code", "deleted_at"], name: "uk_ticket_and_code", unique: true
    t.index ["ticket_id"], name: "index_ticket_instances_on_ticket_id"
    t.index ["ticket_order_detail_id"], name: "index_ticket_instances_on_ticket_order_detail_id"
    t.index ["ticket_order_id"], name: "index_ticket_instances_on_ticket_order_id"
  end

  create_table "ticket_menus", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "ticket_id"
    t.bigint "alliance_id"
    t.bigint "project_id"
    t.bigint "menu_id"
    t.string "ticket_kind"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_ticket_menus_on_alliance_id"
    t.index ["project_id"], name: "index_ticket_menus_on_project_id"
    t.index ["ticket_id"], name: "index_ticket_menus_on_ticket_id"
  end

  create_table "ticket_order_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "ticket_order_id"
    t.bigint "ticket_id"
    t.integer "order_num"
    t.integer "price"
    t.integer "discount_rate"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["ticket_id"], name: "index_ticket_order_details_on_ticket_id"
    t.index ["ticket_order_id"], name: "index_ticket_order_details_on_ticket_order_id"
  end

  create_table "ticket_orders", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "settlement_sale_method"
    t.string "status"
    t.integer "shipping_cost"
    t.integer "order_num"
    t.integer "discount_price"
    t.integer "total_price"
    t.string "pay_method"
    t.string "planned_depositor"
    t.date "planned_deposit_at"
    t.date "preferred_delivery_at"
    t.text "shipping_memo"
    t.integer "bank_discount_price"
    t.boolean "deposit_confirmed"
    t.integer "difference"
    t.date "deposit_at"
    t.string "deposit_method"
    t.boolean "workflow_completed"
    t.date "issued_at"
    t.date "expire_at"
    t.date "shipping_at"
    t.bigint "user_id"
    t.string "shipping_method"
    t.string "baggage_inquiry_num"
    t.bigint "sale_alliance_id"
    t.bigint "sale_customer_id"
    t.string "postal_code", limit: 7
    t.string "pref_code"
    t.string "city_code"
    t.string "town"
    t.string "address"
    t.string "building"
    t.string "room_no"
    t.string "phone", limit: 11
    t.text "memo"
    t.string "sales_destination_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["issued_at"], name: "index_ticket_orders_on_issued_at"
    t.index ["sale_alliance_id"], name: "index_ticket_orders_on_sale_alliance_id"
    t.index ["sale_customer_id"], name: "index_ticket_orders_on_sale_customer_id"
    t.index ["status"], name: "index_ticket_orders_on_status"
  end

  create_table "tickets", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.bigint "alliance_id"
    t.string "original_type", default: "normal", null: false
    t.string "kind", default: "voucher_ticket", null: false
    t.string "collection_type", default: "once", null: false
    t.string "discount_type", null: false
    t.string "menu_unit", default: "all", null: false
    t.integer "price"
    t.boolean "price_editable", default: false, null: false
    t.boolean "except_transport_expense", default: false, null: false
    t.date "valid_from"
    t.date "valid_to"
    t.string "information_notes"
    t.string "frequency", default: "once", null: false
    t.boolean "stackable", default: false, null: false
    t.boolean "use_contract"
    t.string "file"
    t.string "original_file_name"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["alliance_id"], name: "index_tickets_on_alliance_id"
  end

  create_table "todos", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "staff_id"
    t.bigint "unit_id"
    t.bigint "user_id"
    t.bigint "message_information_id"
    t.datetime "action_at", precision: nil
    t.datetime "confirmed_at", precision: nil
    t.text "memo"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["customer_id"], name: "index_todos_on_customer_id"
    t.index ["staff_id"], name: "index_todos_on_staff_id"
    t.index ["unit_id"], name: "index_todos_on_unit_id"
    t.index ["user_id"], name: "index_todos_on_message_information_id"
    t.index ["user_id"], name: "index_todos_on_user_id"
  end

  create_table "transmission_histories", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "contract_id"
    t.bigint "service_assign_id"
    t.string "class_ification"
    t.date "chat_send_date"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "unit_projects", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "unit_id"
    t.bigint "project_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["project_id"], name: "index_unit_projects_on_project_id"
    t.index ["unit_id"], name: "index_unit_projects_on_unit_id"
  end

  create_table "unit_users", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "unit_id"
    t.bigint "user_id"
    t.string "priority"
    t.text "precautions"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["unit_id"], name: "index_unit_users_on_unit_id"
    t.index ["user_id"], name: "index_unit_users_on_user_id"
  end

  create_table "units", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "branch_id", null: false
    t.boolean "customer_handlable"
    t.boolean "staff_handlable"
    t.boolean "alliance_handlable"
    t.string "fax"
    t.string "email"
    t.string "email_customer"
    t.string "email_from"
    t.integer "position"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["branch_id"], name: "index_units_on_branch_id"
    t.index ["email"], name: "index_units_on_email"
    t.index ["email_customer"], name: "index_units_on_email_customer"
  end

  create_table "user_interviews", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "user_id"
    t.integer "interview_question_id"
    t.text "answer"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["interview_question_id"], name: "index_user_interview_on_user_interview_id"
    t.index ["user_id"], name: "index_user_interview_on_user_id"
  end

  create_table "user_likes", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "user_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["user_id"], name: "index_user_like_on_user_id"
  end

  create_table "user_positions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.integer "evaluation_order"
    t.integer "primary_evaluator_position_id"
    t.integer "secondary_evaluator_position_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["primary_evaluator_position_id"], name: "index_user_positions_on_primary_evaluator_position_id"
    t.index ["secondary_evaluator_position_id"], name: "index_user_positions_on_secondary_evaluator_position_id"
  end

  create_table "user_regular_schedules", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "staff_id"
    t.bigint "google_calendar_type_id"
    t.string "summary"
    t.bigint "station_id"
    t.string "location"
    t.datetime "work_from", precision: nil, null: false
    t.datetime "work_to", precision: nil, null: false
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "user_roles", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "user_teams", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "user_position_id", null: false
    t.boolean "is_executive", default: false, null: false
    t.boolean "is_challenage", default: false, null: false
    t.bigint "business_department_id", null: false
    t.bigint "business_division_id"
    t.bigint "business_section_id"
    t.bigint "business_team_id"
    t.boolean "evaluation_target", default: true, null: false
    t.date "assignment", null: false
    t.date "retirement"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["business_department_id"], name: "index_user_team_on_business_department_id"
    t.index ["business_division_id"], name: "index_user_team_on_business_division_id"
    t.index ["business_section_id"], name: "index_user_team_on_business_section_id"
    t.index ["business_team_id"], name: "index_user_team_on_business_team_id"
    t.index ["user_id"], name: "index_user_team_on_user_id"
    t.index ["user_position_id"], name: "index_user_team_on_user_position_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "email", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "password_salt"
    t.string "login_id", null: false
    t.string "name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.string "file"
    t.string "original_file_name"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "auth_token"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
    t.index ["login_id"], name: "index_users_on_login_id", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", size: :long
    t.datetime "created_at", precision: nil
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  create_table "work_report_templates", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "alliance_id"
    t.string "name"
    t.text "body"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
  end

  create_table "works", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "work_type", null: false
    t.string "name", null: false
    t.integer "minutes"
    t.integer "position"
    t.bigint "menu_option_id"
    t.boolean "staff_visible"
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.datetime "deleted_at", precision: nil
    t.index ["menu_option_id"], name: "index_menu_option_details_on_menu_option_id"
  end

  create_table "zendesk_recommends", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.text "api_type", null: false
    t.bigint "staff_id"
    t.json "form_data"
    t.string "messages_type"
    t.datetime "requested_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
  end

  create_table "zendesk_requests", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.text "api_type", null: false
    t.json "form_data"
    t.boolean "api_requested"
    t.datetime "requested_at", precision: nil
    t.integer "creator_id"
    t.integer "updater_id"
    t.integer "deleter_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "deleted_at", precision: nil
  end

  add_foreign_key "scenario_messages", "scenarios"
end
