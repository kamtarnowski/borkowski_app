class Gallery < ActiveRecord::Base
  default_scope -> { order('created_at DESC') }
  validates :title, presence: true
  validates :title_footer, presence: true
  validates :met_title, length: { maximum: 70 }
  validates :met_description, length: { maximum: 160 }
  validates :met_keywords, length: { maximum: 255 }

  def to_param
    "#{id}-#{title.first(25).parameterize}"
  end
end
