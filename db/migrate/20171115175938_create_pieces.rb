class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.column :title, :string
      t.column :artist, :string
      t.column :created, :date
      t.column :image, :string
      t.column :genre, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
