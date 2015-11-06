class Search

  MODEL_ARRAY = [CommunityGarden, District, FarmersMarket, Flu, Hospital]

  def self.for(model, keyword)
    object = MODEL_ARRAY.find do |location|
      location.to_s == model
    end
    search = object.find_by(name: keyword) || object.where("LOWER(name) LIKE ?", "%#{keyword}%")
  end
end