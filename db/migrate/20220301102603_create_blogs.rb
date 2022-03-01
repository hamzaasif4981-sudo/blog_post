class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :short_description
      t.text :post

      t.timestamps
    end
  end
end
