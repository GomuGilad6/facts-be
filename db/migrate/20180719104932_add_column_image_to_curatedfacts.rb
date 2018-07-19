class AddColumnImageToCuratedfacts < ActiveRecord::Migration[5.2]
  def change
    add_column :curated_facts, :image_url, :string
  end
end
