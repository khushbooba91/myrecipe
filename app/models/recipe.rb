class Recipe < ActiveRecord::Base
    belongs_to:chef
    validates :chef_id, presence: true
    validates :name, presence: true, length: {minimum:5, maximum:10}
    validates :summary, presence: true, length: {minimum:5, maximum:10}
    validates :desc, presence: true, length: {minimum:5, maximum:10}
end