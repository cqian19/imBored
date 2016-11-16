class Event < ApplicationRecord
    include ActiveModel::Validations
    validates :name, :month, :day, :year, presence: true
    belongs_to :user, required: false
end
