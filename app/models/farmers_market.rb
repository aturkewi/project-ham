 # == Schema Information
#
# Table name: farmers_markets
#
#  id         :integer          not null, primary key
#  name       :string
#  borough_id :integer
#  day        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FarmersMarket < ActiveRecord::Base

  belongs_to :borough
  has_many :favorites
  has_many :users, through: :favorites

end
