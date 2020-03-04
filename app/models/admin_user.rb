class AdminUser < ApplicationRecord
    #self.table_name = "admin_users"
    has_and_belongs_to_many :pages
    has_many :section_edits
    has_many :sections, :through => :section_edits

    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

    validates :first_name, :presence => true,
						:length => { :maximum => 25 }
    validates :last_name, :presence => true,
                        :length => { :maximum => 50 }
    validates :username, :length => { :within => 8..25 },
                        :uniqueness => true
    validates :email, :presence => true,
                        :length => { :maximum => 100 },
                        :format => EMAIL_REGEX,
                        :confirmation => true

end
