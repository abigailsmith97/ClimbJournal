class OutdoorClimbing < ApplicationRecord
    
    has_many :individual_outdoor_climbs
    accepts_nested_attributes_for :individual_outdoor_climbs,
                                    allow_destroy: true,
                                    reject_if: proc { |att| att['climb_name'].blank? || ['grade'].blank? || ['climbing_style'].blank? || ['tick'].blank? }
     
end

