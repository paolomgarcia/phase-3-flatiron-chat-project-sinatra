class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :phase
      t.string :topic
      t.string :location
      t.string :thread_post
      t.integer :student_id
      t.boolean :like_button
    end
  end
end
