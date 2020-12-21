class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :attendances

    scope :past, -> { where("date < ?", Time.now) }
    scope :upcoming, -> { where("date > ?", Time.now) }

end
