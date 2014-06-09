class AddUserSourcesToSpreePage < ActiveRecord::Migration
  def change
    add_column :spree_pages, :user_sources, :string
  end
end
