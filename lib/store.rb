class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:name,  {:uniqueness => true, :presence => true, :length => {:maximum => 100}}))
  before_save(:name_format)

  private
  def name_format
    self.name = (name().upcase())
  end
end
