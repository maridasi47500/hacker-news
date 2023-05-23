class AddMytypeToNews < ActiveRecord::Migration[6.0]
  def change
    add_column :news, :mytype, :string
    add_column :news, :url, :string
  end
end
