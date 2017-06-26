class Rectangle < ActiveRecord::Base
  def area
    width * height
  end
end
