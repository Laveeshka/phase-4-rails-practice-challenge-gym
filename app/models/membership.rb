class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym

    validates :client_id, presence: true, uniqueness: true
    validates :gym_id, presence: true, uniqueness: true
end
