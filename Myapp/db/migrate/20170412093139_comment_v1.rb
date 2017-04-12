class CommentV1 < ActiveRecord::Migration[5.0]
  def change
    change_table :comment do |t|
      t.string :desc
    end
  end
end
