class Interest < ActiveRecord::Base
    belongs_to :user
    has_many :clubs
end
