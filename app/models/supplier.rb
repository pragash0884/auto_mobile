class Supplier < ActiveRecord::Base
  has_many :bills

  validates :email, :mobile, :presence=>true
  validates :email, :mobile, :uniqueness => true
end
