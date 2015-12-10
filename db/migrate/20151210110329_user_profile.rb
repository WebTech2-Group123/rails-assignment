class UserProfile < ActiveRecord::Migration
  def change

    # use email as username for simplicity
    # name -> email
    # password_digest -> password
    change_table :users do |t|
      t.rename :name, :email
      t.rename :password_digest, :password
    end

    # add columns
    add_column :users, :name, :string
    add_column :users, :picture, :string
    add_column :users, :address, :string

    # force to have email, password
    change_column_null :users, :email, false
    change_column_null :users, :password, false

    # make email unique
    add_index :users, :email, unique: true

  end
end
