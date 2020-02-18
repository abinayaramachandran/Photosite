class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.column :date_time, :date
      t.column :file_name, :string
      # t.column :user_id, :integer
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
