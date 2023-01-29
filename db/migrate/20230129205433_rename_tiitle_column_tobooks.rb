class RenameTiitleColumnTobooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :tiitle, :title
  end
end
