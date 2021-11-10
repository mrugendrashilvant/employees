class EmployeeDetail < ApplicationRecord
    validates :fName, :lName, :email, presence: true
    validates :fName, length: { minimum: 3 }
    validates :experience, numericality: true
    validates :email, uniqueness: true
end
