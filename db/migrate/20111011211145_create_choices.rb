class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :poll_id
      t.string :choice

      t.timestamps
    end
  end
end
