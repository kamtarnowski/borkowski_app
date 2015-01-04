module ApplicationHelper

  def opinion_id_cont
    opin = Opinion.all
    @rand_opin = Opinion.find(rand((opin[-1].id)..(opin[0].id)))
    @rand_opin_cont = @rand_opin.content
  end

  def show_user
    @rand_opin.user.name
  end

end

