class AddUsersToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :organizations, index: true
  end
end
