class HomePage < ActiveRecord::Base
  validates :title, presence: true
  validates :met_title, length: { maximum: 70 }
  validates :met_description, length: { maximum: 160 }
  validates :met_keywords, length: { maximum: 255 }
  default_scope -> { order('id ASC') }

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
