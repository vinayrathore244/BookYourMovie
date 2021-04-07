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

ActiveRecord::Schema.define(version: 2021_04_03_121040) do

  create_table "booking_tickets", force: :cascade do |t|
    t.string "No_Of_Tickets_Available"
    t.string "Movie_Name"
    t.string "Ticket_Number"
    t.string "Date"
    t.string "Time"
    t.string "Venue"
    t.string "Ticket_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashiers", force: :cascade do |t|
    t.string "employee_name"
    t.text "employee_address"
    t.string "employee_salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "customer_mobile"
    t.string "customer_email"
    t.text "customer_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_shows", force: :cascade do |t|
    t.string "movie_name"
    t.string "movie_language"
    t.string "movie_hour"
    t.string "movie_type"
    t.string "movie_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "video"
  end

  create_table "payments", force: :cascade do |t|
    t.string "amount"
    t.string "customer"
    t.string "date"
    t.string "Time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "seats", force: :cascade do |t|
    t.string "seat_no"
    t.boolean "seat_available"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "movie_shows_id"
    t.index ["movie_shows_id"], name: "index_seats_on_movie_shows_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "Country_code"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
