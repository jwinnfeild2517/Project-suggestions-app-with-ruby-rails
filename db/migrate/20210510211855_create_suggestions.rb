class CreateSuggestions < ActiveRecord::Migration[6.1]
  def change
    create_table :suggestions do |t|
      t.string :user
      t.string :body
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
