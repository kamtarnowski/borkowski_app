class Opinion < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140, minimum: 40 }
  validates :user_id, presence: true

  def to_param
    "#{id}-#{content.first(25).parameterize}"
  end

end
