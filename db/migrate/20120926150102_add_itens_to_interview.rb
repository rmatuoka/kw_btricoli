class AddItensToInterview < ActiveRecord::Migration
  def self.up
    add_column :interviews, :retorno, :boolean, :default => 0
    add_column :interviews, :retorno_ausente, :boolean, :default => 0
  end

  def self.down
    remove_column :interviews, :retorno_ausente
    remove_column :interviews, :retorno
  end
end
