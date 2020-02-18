class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user,  foreign_key: true
      t.references :photo, foreign_key: true
      t.datetime :date_time
      t.text :comment_text
      t.timestamps
    end
  end
end
