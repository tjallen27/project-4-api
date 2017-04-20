class AddPrintRefToComment < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :print, foreign_key: true
  end
end
