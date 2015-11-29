# == Schema Information
#
# Table name: favorites
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  favoritable_id   :integer
#  favoritable_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Favorite < ActiveRecord::Base
  belongs_to :favoritable, polymorphic: true
  belongs_to :user
end
