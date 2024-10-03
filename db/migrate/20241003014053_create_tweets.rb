class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :Description
      t.string :UserName

      t.timestamps
    end
  end
end
