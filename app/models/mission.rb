class Mission < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  # new stuff
  # validates_presence_of :name, :scientist, :planet
  # validates_uniqueness_of :scientist, :scope => :planet
  belongs_to :scientist
  belongs_to :planet
end
