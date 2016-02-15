class CreateValidators < ActiveRecord::Migration
  def change
    create_table :validators do |t|
      t.boolean :disponible
      t.string :type
      t.string :url

      t.timestamps null: false
    end
  end
end
