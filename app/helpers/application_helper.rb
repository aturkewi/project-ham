module ApplicationHelper

  def readable(method_name)
    method_name.split('_').map(&:capitalize).join(' ')
  end

  def borough_methods
    ["hospital_count", "farmers_market_count", "flu_count", "community_garden_count", "district_attendance"]
  end

  def make_id

  end

end
