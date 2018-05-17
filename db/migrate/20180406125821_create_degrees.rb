class CreateDegrees < ActiveRecord::Migration[5.1]
  def change
    create_table :degrees do |t|
      t.references :division, foreign_key: true
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
