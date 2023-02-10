class Scientist < ApplicationRecord
    validates :name, presence: true
    validates :name, :uniqueness => true
    # no uniqueness and do presence
    # validates :field_of_study, :uniqueness => true
    validates :field_of_study, presence: true

    has_many  :missions, dependent: :destroy
    has_many  :planets, through: :missions
    
end
