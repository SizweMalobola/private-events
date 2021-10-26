class AddEndingDateToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :ending_date, :string
  end
end
