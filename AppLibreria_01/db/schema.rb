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

ActiveRecord::Schema.define(version: 20140704044656) do

  create_table "books", force: true do |t|
    t.string   "isbn"
    t.string   "nombrelibro"
    t.string   "autor"
    t.string   "editorial"
    t.float    "precio"
    t.integer  "category_id"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["category_id"], name: "index_books_on_category_id"
  add_index "books", ["provider_id"], name: "index_books_on_provider_id"

  create_table "categories", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "nombre"
    t.string   "direcion"
    t.string   "telefono"
    t.string   "rfc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detailorders", force: true do |t|
    t.integer  "book_id"
    t.integer  "cantidad"
    t.integer  "sale_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detailorders", ["book_id"], name: "index_detailorders_on_book_id"
  add_index "detailorders", ["sale_id"], name: "index_detailorders_on_sale_id"

  create_table "detailsales", force: true do |t|
    t.integer  "book_id"
    t.integer  "cantidad"
    t.integer  "sale_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detailsales", ["book_id"], name: "index_detailsales_on_book_id"
  add_index "detailsales", ["sale_id"], name: "index_detailsales_on_sale_id"

  create_table "employees", force: true do |t|
    t.string   "nombre"
    t.string   "rfc"
    t.string   "direccion"
    t.string   "cargo"
    t.string   "telefono"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.string   "nombremeta"
    t.string   "descripcion"
    t.boolean  "cumplida"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "goals", ["employee_id"], name: "index_goals_on_employee_id"

  create_table "orders", force: true do |t|
    t.date     "fechapedido"
    t.boolean  "enproceso"
    t.boolean  "cumplida"
    t.boolean  "entregado"
    t.boolean  "cancelado"
    t.integer  "employee_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"
  add_index "orders", ["employee_id"], name: "index_orders_on_employee_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", force: true do |t|
    t.string   "tipopromocion"
    t.string   "medio"
    t.string   "descripcion"
    t.integer  "employee_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "promotions", ["customer_id"], name: "index_promotions_on_customer_id"
  add_index "promotions", ["employee_id"], name: "index_promotions_on_employee_id"

  create_table "providers", force: true do |t|
    t.string   "razonsocial"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.date     "fechatransaccion"
    t.float    "total"
    t.float    "descuento"
    t.integer  "employee_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["customer_id"], name: "index_sales_on_customer_id"
  add_index "sales", ["employee_id"], name: "index_sales_on_employee_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   default: "seller"
    t.string   "name"
    t.datetime "date_of_birth"
    t.boolean  "is_female",              default: false
    t.integer  "employee_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["employee_id"], name: "index_users_on_employee_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
