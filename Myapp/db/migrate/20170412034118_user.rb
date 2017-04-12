class User < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    t.string :fisrtname
    t.string :lastname
    
    t.timestamps
    end
  end
end
