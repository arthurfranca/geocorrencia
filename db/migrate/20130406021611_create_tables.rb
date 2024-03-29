class CreateTables < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.text :description, :null => false
    end
    
    create_table :hours do |t|
      t.text :description, :null => false
    end
    
    create_table :declarants do |t|
      t.string :name, :null => false
      t.string :email
      t.string :place_of_birth
      t.string :phone
    end
    
    create_table :addresses do |t|
      t.string :street, :null => false
      t.integer :number
      t.string :complement
      t.string :zip_code

      t.references :declarant
    end
    add_index :addresses, :declarant_id
    
    create_table :occurrences do |t|
      t.date :date, :null => false
      t.text :description
      t.point :lat_lon, :srid => 4326 # spatial data

      t.references :type # foreign_key
      t.references :hour
      t.references :declarant
    end

    # As described on spatialite gem doc
		change_table :occurrences do |t|
			t.index :lat_lon, :spatial => true
		end

    add_index :occurrences, :type_id # sets index to association column
    add_index :occurrences, :hour_id
    add_index :occurrences, :declarant_id     
    
  end
end
