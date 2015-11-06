class IdViewObject

  def initialize
  end

  def resource_to_id(resource)
    (resource.class.to_s.scan(/[A-Z][a-z]+/).join("_").downcase+"_id").to_sym
  end

end