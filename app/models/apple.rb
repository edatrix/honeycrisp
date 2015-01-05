class Apple < ActiveRecord::Base
  self.inheritance_column = nil

  validates :type, :presence => true

  def difference
    self.yums.to_i - self.yucks.to_i
  end

end
