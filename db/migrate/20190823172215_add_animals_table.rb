class AddAnimalsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :name, :string
      t.column :type, :string
      t.column :age, :integer
      t.column :breed, :string
      t.column :content, :text
    end
  end
end
