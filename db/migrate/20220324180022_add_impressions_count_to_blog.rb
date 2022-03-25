class AddImpressionsCountToBlog < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :impressions_count, :integer
  end
end
