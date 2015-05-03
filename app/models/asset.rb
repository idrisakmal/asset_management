class Asset < ActiveRecord::Base
  belongs_to :staff
  belongs_to :product
end
