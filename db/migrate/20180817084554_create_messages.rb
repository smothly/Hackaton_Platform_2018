class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.belongs_to :user
      t.integer :reciever_id
      t.boolean :read, :default => false

      t.timestamps null: false
    end
  end
end
