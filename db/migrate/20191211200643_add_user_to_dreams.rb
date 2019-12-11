class AddUserToDreams < ActiveRecord::Migration[5.2]
  def change
    add_reference :dreams, :user, foreign_key: true
  end
end
