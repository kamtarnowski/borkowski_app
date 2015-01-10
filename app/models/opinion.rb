class Opinion < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140, minimum: 50 }
  validates :user_id, presence: true

  def to_param
    "#{content.first(25).parameterize}"
  end

end
