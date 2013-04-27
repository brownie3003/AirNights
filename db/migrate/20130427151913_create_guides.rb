class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :name
      t.string :sex
      t.date :birth_date
      t.string :location
      t.string :email
      t.string :willingto

      t.timestamps
    end
  end
end
