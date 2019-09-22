class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :notes
      t.belongs_to :area, foreign_key: true
      t.belongs_to :purpose, foreign_key: true

      t.timestamps
    end
  end
end
