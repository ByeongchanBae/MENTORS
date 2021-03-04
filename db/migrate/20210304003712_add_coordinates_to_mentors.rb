class AddCoordinatesToMentors < ActiveRecord::Migration[6.0]
  def change
    add_column :mentors, :latitude, :float
    add_column :mentors, :longitude, :float
  end
end
