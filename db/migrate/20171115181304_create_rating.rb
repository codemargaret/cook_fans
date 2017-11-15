class CreateRating < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.column :rate, :integer
      t.column :piece_id, :integer
      t.column :user_id, :integer

      t.timestamps
    
    end
  end
end
