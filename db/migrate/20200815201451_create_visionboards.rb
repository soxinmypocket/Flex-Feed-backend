class CreateVisionboards < ActiveRecord::Migration[6.0]
  def change
    create_table :visionboards do |t|
      t.string :title
      t.string :photo
      t.string :description
      t.string :author
      t.integer :user_id

      t.timestamps
    end
  end
end
