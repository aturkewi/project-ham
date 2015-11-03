# == Schema Information
#
# Table name: flus
#
#  id         :integer          not null, primary key
#  name       :string
#  borough_id :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Flu < ActiveRecord::Base


end
