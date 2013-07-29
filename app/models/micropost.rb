class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content
  validates :content, length: {maximum: 140,minimum:2} ,presence:true
  validates :user_id, presence:true

  default_scope order: "microposts.created_at DESC"


end
