class Rectangle < ActiveRecord::Base
  def area
    width * height
  end

  def biggest(smaller_than = nil)
    biggest = 0
    Rectangle.all.each do |rect|
      this_area = rect.area
      if this_area > biggest
        biggest = this_area
      end
    end

    biggest = Rectangle.where(area: biggest).first
    return biggest.area
  end
end
