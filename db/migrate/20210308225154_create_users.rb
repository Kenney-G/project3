class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.password_digest :password
      t.has_many :interests
      t.has_many, :categories
      t.interests :through

      t.timestamps
    end
  end
end
