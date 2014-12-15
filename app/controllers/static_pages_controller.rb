class StaticPagesController < ApplicationController
  def new
  end

  def home
    gflash :notice => "The knob of butter is "
  end


end
