class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.text :title
      t.text :content
      t.integer :user_id
      t.integer :editCount

      t.timestamps
    end
  end
end
