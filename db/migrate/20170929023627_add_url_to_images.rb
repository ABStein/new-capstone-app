class AddUrlToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :product_id, :integer
    add_column :images, :url, :string
  end
end
