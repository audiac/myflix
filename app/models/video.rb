class Video < ActiveRecord::Base
  validates :title, :description, presence: true

  belongs_to :category

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title LIKE ?", "%#{search_term}%").order("created_at DESC")
  end
end
