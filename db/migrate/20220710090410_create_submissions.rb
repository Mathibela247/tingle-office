class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.string :title
      t.text :purpose
      t.text :background
      t.text :discussion
      t.text :communication
      t.text :legal
      t.text :human_resource
      t.text :financial
      t.text :recommendation

      t.timestamps
    end
  end
end
