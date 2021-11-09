class ChangeDateColumnFromEvents < ActiveRecord::Migration[6.1]
  def chamge
    reversible do |dir|
      change_column :events do |t|
        dir.up {t.change :starting_date, :date}
        dir.down {t.change :starting_date, :string}
      end
    end
  end
end
