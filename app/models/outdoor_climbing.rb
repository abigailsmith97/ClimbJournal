class OutdoorClimbing < ApplicationRecord
    
    belongs_to :user
    devise :authenticatable
    has_many :individual_outdoor_climbs, dependent: :destroy
    has_many :images, dependent: :destroy
    
    accepts_nested_attributes_for :individual_outdoor_climbs,
                                    allow_destroy: true,
                                    reject_if: proc { |att| att['climb_name'].blank? || ['grade'].blank?}
     
    # validates :climbing_type, presence: true, inclusion: { in: ['trad', 'sport', 'bouldering'] }

end

