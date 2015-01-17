class StaticPagesController < ApplicationController

  def home
    @home_p = HomePage.find(1)
  end

  def kontakt
  end

  def realizacje
  end

  def metoda_1
  end

  def metoda_2
  end

  def metoda_3
  end

end
