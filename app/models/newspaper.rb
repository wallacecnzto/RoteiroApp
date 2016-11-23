class Newspaper < ActiveRecord::Base
  validates :name, :address, :amount, presence:true
end
