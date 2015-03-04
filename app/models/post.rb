# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  photo       :string
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ActiveRecord::Base
  validates :photo, presence: true
  validates :user_id, presence: true
  
  belongs_to :user

  mount_uploader :photo, PhotoUploader
end
