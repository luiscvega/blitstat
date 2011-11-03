class FixChoiceName < ActiveRecord::Migration
  def change
    rename_column :choices, :choice, :title
  end
end
