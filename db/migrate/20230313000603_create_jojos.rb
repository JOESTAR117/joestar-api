class CreateJojos < ActiveRecord::Migration[6.1]
  def change
    create_table :jojos do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
