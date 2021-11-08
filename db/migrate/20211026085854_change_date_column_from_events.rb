class ChangeDateColumnFromEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :date, :starting_date
  end
end
