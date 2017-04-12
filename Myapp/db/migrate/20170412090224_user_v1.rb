class UserV1 < ActiveRecord::Migration[5.0]
  def change
  	change_table :users do |t|
    t.text :desc
    end
  end
end
