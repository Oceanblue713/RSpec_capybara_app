class Add < ActiveRecord::Migration
  def change
    add_reference :articles, :user, foreign_key: true
  end
end
