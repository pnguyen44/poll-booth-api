class RemoveDescriptionFromSurveys < ActiveRecord::Migration[5.1]
  def change
    remove_column :surveys, :description, :string
  end
end
