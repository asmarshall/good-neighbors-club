class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :business_name
      t.text :media
      t.string :location
      t.string :category
      t.string :url
      t.boolean :public

      t.timestamps
    end
  end
end
