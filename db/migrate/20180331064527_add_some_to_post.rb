class AddSomeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :password, :string
  end
end
