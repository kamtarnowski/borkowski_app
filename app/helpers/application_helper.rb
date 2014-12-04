module ApplicationHelper

  def full_title(l_part)
    if l_part.empty?
      "Borkowski Wylewki"
    else
      "Borkowski Wylewki | #{l_part}"
    end
  end
end
