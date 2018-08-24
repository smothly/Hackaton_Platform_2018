class CreateArticles < ActiveRecord::Migration

  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      #이미지들 업로드
      t.string :images
      #관계설정
      t.belongs_to :club
      t.belongs_to :user
      add_foreign_key :clubs, :articless, on_delete: :cascade

      t.timestamps null: false
    end
  end
end
