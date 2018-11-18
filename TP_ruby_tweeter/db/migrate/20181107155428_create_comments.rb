class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.timestamps
      t.boolean :liked # Boolean ?!
      t.text :content
      # Manque la clé étrangère pour le user (user_id)
    end
  end
end
