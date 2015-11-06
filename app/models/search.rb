class Search

  MODEL_ARRAY = [CommunityGarden, District, FarmersMarket, Flu, Hospital]

  def self.for(model, keyword)
    object = MODEL_ARRAY.find do |location|
      location.to_s == model
    end
    # Original search code: "NAME LIKE '%#{keyword}%'"
    
    object.where("LOWER(name) LIKE ?", "%#{keyword}%")
  end

end