class CreateRectangles < ActiveRecord::Migration[5.1]
  def change
    create_table :rectangles do |t|
      t.string :label
      t.float :width
      t.float :height
    end
  end
end
