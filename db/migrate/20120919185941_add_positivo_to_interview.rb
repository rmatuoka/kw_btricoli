class AddPositivoToInterview < ActiveRecord::Migration
  def self.up
    add_column :interviews, :positivo, :integer, :default => 0
  end

  def self.down
    remove_column :interviews, :positivo
  end
end
