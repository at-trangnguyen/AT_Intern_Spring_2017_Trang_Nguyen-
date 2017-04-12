class Comment < ActiveRecord::Migration[5.0]
  def change
  	create_table :comment do |t|
    t.string :fisrtname
    t.string :lastname
    
    t.timestamps
  	end
  end
end
