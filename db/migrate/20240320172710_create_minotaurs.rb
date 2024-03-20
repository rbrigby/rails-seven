class CreateMinotaurs < ActiveRecord::Migration[7.1]
  def change
    create_table :minotaurs do |t|
      t.string :name
      t.timestamps
    end
  end
end
