class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet

  validates :name, presence: true
  validates :scientist, uniqueness:  {scope: :name}
  # validates :scientist_id, presence: true, uniqueness: true
  validates :planet, presence: true
end
