class Club < ActiveRecord::Base
  mount_uploader :mainimage, MainimageUploader
  has_many :articles, dependent: :delete_all
  has_many :users
end
