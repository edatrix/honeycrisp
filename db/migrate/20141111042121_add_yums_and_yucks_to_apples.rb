class AddYumsAndYucksToApples < ActiveRecord::Migration
  def change
    add_column :apples, :yums, :integer
    add_column :apples, :yucks, :integer
  end
end
