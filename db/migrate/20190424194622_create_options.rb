class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :vote_count
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
