class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :content
      t.string :category

      #메인이미지
      t.string :mainimage

      t.timestamps null: false
    end
  end
end
