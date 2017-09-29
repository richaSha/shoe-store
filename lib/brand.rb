class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)
  validation(:name {:uniqueness => true, :presence => true, :length => {:maximum => 100}})
  brfore_save(:name_format)

  private
  def name_format
    self.name = (name().upcase())
  end
end
