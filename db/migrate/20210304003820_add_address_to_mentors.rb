class AddAddressToMentors < ActiveRecord::Migration[6.0]
  def change
    add_column :mentors, :address, :string
  end
end
