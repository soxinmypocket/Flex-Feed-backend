class CreateVisionboards < ActiveRecord::Migration[6.0]
  def change
    create_table :visionboards do |t|
      t.string :title
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
