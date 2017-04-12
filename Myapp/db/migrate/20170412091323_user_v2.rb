class UserV2 < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :desc, :string
	
  end
end
