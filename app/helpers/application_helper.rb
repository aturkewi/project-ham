module ApplicationHelper

  def readable(method_name)
    method_name.split('_').map(&:capitalize).join(' ')
  end

end
