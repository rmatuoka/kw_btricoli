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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120915201522) do

  create_table "cards", :force => true do |t|
    t.string   "contact"
    t.string   "company"
    t.string   "position"
    t.string   "email"
    t.string   "phone"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interviews", :force => true do |t|
    t.string   "entrevistador"
    t.date     "data"
    t.boolean  "ausente"
    t.boolean  "recusou"
    t.string   "nome"
    t.string   "profissao"
    t.string   "escolaridade"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "telefone"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.date     "datanascimento"
    t.integer  "membros18"
    t.integer  "asfalto_1"
    t.integer  "desemprego_1"
    t.integer  "educacao_1"
    t.integer  "enchentes_1"
    t.integer  "lazer_1"
    t.integer  "mobilidade_1"
    t.integer  "saneamento_1"
    t.integer  "saude_1"
    t.integer  "seguranca_1"
    t.integer  "trafico_1"
    t.integer  "transito_1"
    t.integer  "transporte_1"
    t.integer  "nda_1"
    t.string   "outros_1"
    t.integer  "asfalto_2"
    t.integer  "desemprego_2"
    t.integer  "educacao_2"
    t.integer  "enchentes_2"
    t.integer  "lazer_2"
    t.integer  "mobilidade_2"
    t.integer  "saneamento_2"
    t.integer  "saude_2"
    t.integer  "seguranca_2"
    t.integer  "trafico_2"
    t.integer  "transito_2"
    t.integer  "transporte_2"
    t.integer  "nda_2"
    t.string   "outros_2"
    t.integer  "asfalto_3"
    t.integer  "desemprego_3"
    t.integer  "educacao_3"
    t.integer  "enchentes_3"
    t.integer  "lazer_3"
    t.integer  "mobilidade_3"
    t.integer  "saneamento_3"
    t.integer  "saude_3"
    t.integer  "seguranca_3"
    t.integer  "trafico_3"
    t.integer  "transito_3"
    t.integer  "transporte_3"
    t.integer  "nda_3"
    t.string   "outros_3"
    t.integer  "saulo_4"
    t.integer  "wanderley_4"
    t.integer  "luiz_4"
    t.integer  "arthur_4"
    t.integer  "nulo_4"
    t.integer  "indeciso_4"
    t.integer  "naorespondeu_4"
    t.text     "mensagem_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
