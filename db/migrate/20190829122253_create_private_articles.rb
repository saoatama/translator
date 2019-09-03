class CreatePrivateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :private_articles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :path
      t.string :source

      t.timestamps
    end
  end
end
