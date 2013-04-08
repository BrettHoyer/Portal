class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :message
      t.datetime :created

      t.timestamps
    end
  end
end
