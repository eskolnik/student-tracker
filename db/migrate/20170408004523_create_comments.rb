class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :tags

      t.belongs_to :student
    end
  end
end
