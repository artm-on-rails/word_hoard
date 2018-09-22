class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :term
      t.text :context
      t.string :term_translation
      t.text :context_translation

      t.timestamps
    end
    add_index :cards, :term
    add_index :cards, :term_translation
  end
end
