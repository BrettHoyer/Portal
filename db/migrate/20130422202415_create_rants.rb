class CreateRants < ActiveRecord::Migration
  def change
    create_table :rants do |t|
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
