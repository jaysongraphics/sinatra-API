class Review < ActiveRecord::Base
    belongs_to :buyer
    belongs_to :gallery
end