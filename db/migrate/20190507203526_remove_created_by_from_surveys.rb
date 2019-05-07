class RemoveCreatedByFromSurveys < ActiveRecord::Migration[5.1]
  def change
    remove_column :surveys, :created_by, :string
  end
end
