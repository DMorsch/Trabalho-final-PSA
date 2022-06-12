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

ActiveRecord::Schema.define(version: 2022_06_12_163736) do

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.integer "creditos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "codigo"
    t.integer "nivel"
  end

  create_table "historicos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "disciplina_id"
    t.float "nota"
    t.boolean "aprovado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "semestre"
  end

  create_table "turma_users", force: :cascade do |t|
    t.integer "turma_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.integer "disciplina_id"
    t.integer "vagas"
    t.string "horario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "codigo"
    t.integer "turma_users_count"
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.boolean "coordenador"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

end
