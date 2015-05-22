class Video < ActiveRecord::Base
  validates_presence_of :title, :description

  belongs_to :category

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title ILIKE ?", "%#{search_term}%").order("created_at DESC")
  end
end
