# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string
#  uid        :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base

  has_many :favorites
  has_many :hospitals, through: :favorites, source: :favoritable, source_type: 'Hospital'
  has_many :flus, through: :favorites, source: :favoritable, source_type: 'Flu'
  has_many :districts, through: :favorites, source: :favoritable, source_type: 'District'
  has_many :jobs, through: :favorites, source: :favoritable, source_type: 'Job'
  has_many :farmers_markets, through: :favorites, source: :favoritable, source_type: 'Hospital'
  has_many :community_gardens, through: :favorites, source: :favoritable, source_type: 'Hospital'

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

end
