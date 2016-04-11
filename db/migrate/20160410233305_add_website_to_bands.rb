class AddWebsiteToBands < ActiveRecord::Migration
  def change
    add_column :bands, :website, :string
  end
end
