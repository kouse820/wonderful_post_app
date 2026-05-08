class Article < ApplicationRecord
   validates :title, presence: true
   validates :content, presence: true
   belongs_to :user # 追加
   has_many :tag_articles, dependent: :destroy
   has_many :tags, through: :tag_articles
end
