class CreateRubyBbThreads < ActiveRecord::Migration[5.0]
  def change
    create_table :ruby_bb_threads do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
