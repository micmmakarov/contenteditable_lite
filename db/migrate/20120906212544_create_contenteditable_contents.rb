class CreateContenteditableContents < ActiveRecord::Migration
  def change
    create_table :contenteditable_contents do |t|
      t.string :key
      t.text :value

      t.timestamps
    end
  end
end
