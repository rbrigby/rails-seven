class CreateUnicorns < ActiveRecord::Migration[7.1]
  def change
    create_table :unicorns do |t|
      t.string :name
      t.timestamps
    end
  end
end
