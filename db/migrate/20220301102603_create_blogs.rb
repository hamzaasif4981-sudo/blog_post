class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :short_description
      t.text :body

      t.timestamps
    end
  end
end
