# == Schema Information
#
# Table name: favorites
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  hospital_id         :integer
#  flu_id              :integer
#  district_id         :integer
#  job_id              :integer
#  farmers_market_id   :integer
#  community_garden_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Favorite < ActiveRecord::Base

  belongs_to :user
  belongs_to :hospital
  belongs_to :district
  belongs_to :farmers_market
  belongs_to :flu

end
