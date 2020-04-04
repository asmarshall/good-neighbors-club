class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :title
      t.text :body
      t.string :category
      t.string :url
      t.text :media
      t.string :additional_comments
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
