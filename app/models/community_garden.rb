# == Schema Information
#
# Table name: community_gardens
#
#  id         :integer          not null, primary key
#  name       :string
#  borough_id :integer
#  size       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommunityGarden < ActiveRecord::Base

  belongs_to :borough
  has_many :favorites
  has_many :users, through: :favorites

end
