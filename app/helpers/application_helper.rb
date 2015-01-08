module ApplicationHelper

  def opinion_id_cont
    int_opin = []
    Opinion.all.each { |x| int_opin << x.id.to_i }
    @rand_opin = Opinion.find(int_opin.sample)
    @rand_opin_cont = @rand_opin.content
  end

  def show_user
    @rand_opin.user.name
  end

end

