class CreateBbPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :bb_posts do |t|
      t.string :poster
      t.text :body
      t.references :bb_thread, foreign_key: true

      t.timestamps
    end
  end
end
