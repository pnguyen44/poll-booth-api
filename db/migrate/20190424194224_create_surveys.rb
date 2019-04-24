# db/migrate/[timestamp]_create_surveys.rb
class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :description
      t.string :question
      t.string :created_by

      t.timestamps
    end
  end
end
