class CreateUserCredentials < ActiveRecord::Migration[8.1]
  def change
    create_table :user_credentials do |t|
      t.references :user, foreign_key: true, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.string :firebase_uid

      t.timestamps
    end
  end
end
