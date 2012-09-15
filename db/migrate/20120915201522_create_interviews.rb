class CreateInterviews < ActiveRecord::Migration
  def self.up
    create_table :interviews do |t|
      t.string :entrevistador
      t.date :data
      t.boolean :ausente
      t.boolean :recusou
      t.string :nome
      t.string :profissao
      t.string :escolaridade
      t.string :endereco
      t.string :bairro
      t.string :telefone
      t.string :email
      t.string :facebook
      t.string :twitter
      t.date :datanascimento
      t.integer :membros18
      t.integer :asfalto_1
      t.integer :desemprego_1
      t.integer :educacao_1
      t.integer :enchentes_1
      t.integer :lazer_1
      t.integer :mobilidade_1
      t.integer :saneamento_1
      t.integer :saude_1
      t.integer :seguranca_1
      t.integer :trafico_1
      t.integer :transito_1
      t.integer :transporte_1
      t.integer :nda_1
      t.string :outros_1
      t.integer :asfalto_2
      t.integer :desemprego_2
      t.integer :educacao_2
      t.integer :enchentes_2
      t.integer :lazer_2
      t.integer :mobilidade_2
      t.integer :saneamento_2
      t.integer :saude_2
      t.integer :seguranca_2
      t.integer :trafico_2
      t.integer :transito_2
      t.integer :transporte_2
      t.integer :nda_2
      t.string :outros_2
      t.integer :asfalto_3
      t.integer :desemprego_3
      t.integer :educacao_3
      t.integer :enchentes_3
      t.integer :lazer_3
      t.integer :mobilidade_3
      t.integer :saneamento_3
      t.integer :saude_3
      t.integer :seguranca_3
      t.integer :trafico_3
      t.integer :transito_3
      t.integer :transporte_3
      t.integer :nda_3
      t.string :outros_3
      t.integer :saulo_4
      t.integer :wanderley_4
      t.integer :luiz_4
      t.integer :arthur_4
      t.integer :nulo_4
      t.integer :indeciso_4
      t.integer :naorespondeu_4
      t.text :mensagem_5
      t.timestamps
    end
  end

  def self.down
    drop_table :interviews
  end
end
