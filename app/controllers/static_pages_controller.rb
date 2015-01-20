class StaticPagesController < ApplicationController

  def home
    @home_p = HomePage.find(1)
  end

  def kontakt
  end

  def realizacje
  end

end
