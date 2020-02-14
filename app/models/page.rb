class Page < ApplicationRecord

    has_many :sections
    belongs_to :subject

    has_and_belongs_to_many :admin_users
end
