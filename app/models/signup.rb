class Signup < ApplicationRecord
    validates :time, inclusion: {within: 0..23}

    belongs_to :camper
    belongs_to :activity
end