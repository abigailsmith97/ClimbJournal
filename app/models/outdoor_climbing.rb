class OutdoorClimbing < ApplicationRecord
    
    belongs_to :user
    devise :authenticatable
    has_many :individual_outdoor_climbs, dependent: :destroy
    has_one_attached :main_image, service: :amazon
    
    accepts_nested_attributes_for :individual_outdoor_climbs,
                                    allow_destroy: true,
                                    reject_if: proc { |att| att['climb_name'].blank? || ['grade'].blank?}
     
    geocoded_by :location
    after_validation :geocode, if: :will_save_change_to_location?
    # validates :climbing_type, presence: true, inclusion: { in: ['trad', 'sport', 'bouldering'] }
    # validate :acceptable_image
end

