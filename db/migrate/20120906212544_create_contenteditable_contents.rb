class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :key
      t.text :value

      t.timestamps
    end
  end
end
