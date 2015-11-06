class User < ActiveRecord::Base

  has_many :favorites
  has_many :hospitals, through: :favorites
  has_many :flus, through: :favorites
  has_many :districts, through: :favorites
  has_many :jobs, through: :favorites
  has_many :farmers_markets, through: :favorites
  has_many :community_gardens, through: :favorites

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

end
