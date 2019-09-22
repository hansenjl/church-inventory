class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :name
      t.text :notes
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
