# == Schema Information
#
# Table name: districts
#
#  id         :integer          not null, primary key
#  name       :string
#  attendance :float
#  borough_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class District < ActiveRecord::Base

  belongs_to :borough
  has_many :favorites, as: :favoritable
  has_many :users, through: :favorites

end
