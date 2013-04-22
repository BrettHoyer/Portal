class AddImageToRants < ActiveRecord::Migration
  def change
    add_column :rants, :image, :string
  end
end
