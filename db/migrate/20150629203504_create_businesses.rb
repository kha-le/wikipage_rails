class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :phone, :string
      t.column :website, :string
      t.column :hours, :string

      t.timestamps
    end
    create_table :categories do |t|
      t.column :type, :string
    end
  end
end
