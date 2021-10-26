class AddStartingDateColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :starting_date, :string
  end
end
