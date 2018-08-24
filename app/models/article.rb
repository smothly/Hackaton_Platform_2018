class Article < ActiveRecord::Base
  belongs_to :club
  belongs_to :user
  mount_uploaders :images, ArticleimagesUploader
  serialize :images, JSON
  has_many :comments, dependent: :delete_all
end
