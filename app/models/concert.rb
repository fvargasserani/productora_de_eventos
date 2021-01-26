class Concert < ApplicationRecord
    belongs_to :group
    validates :date, :place, :attendance, :duration, presence: true
end
