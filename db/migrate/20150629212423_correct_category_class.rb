class CorrectCategoryClass < ActiveRecord::Migration
  def change
    drop_table :categories
    create_table :categories do |t|
      t.column :business_type, :string
    end
  end
end
