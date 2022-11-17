class CreateComment < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :thread_comment
      t.string :comment_user
      t.integer :post_id
    end
  end
end
