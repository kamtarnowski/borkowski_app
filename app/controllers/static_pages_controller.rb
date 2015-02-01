class StaticPagesController < ApplicationController

  def home
    @home_p = HomePage.find(1)

  end

  def event_cookies
    cookies[:maintain_borkowski]= { value: 'TRUE', expires: 2.year.from_now }
  end

end
