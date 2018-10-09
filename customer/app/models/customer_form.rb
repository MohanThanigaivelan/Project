class CustomerForm < ApplicationRecord
	validates :Phone_no, presence: true,
                    length: { minimum: 10 }
end
