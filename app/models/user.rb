class User < ActiveRecord::Base
  has_many :timestamps
  
  validates :first_name, presence: true,
                    length: { minimum: 1 }
                    
  validates :last_name, presence: true,
                    length: { minimum: 1 }
                    
  validates :employee_Id, presence: true,
                    length: { minimum: 1 },
                    uniqueness: true
                    
  validates :employee_type, presence: true,
                    length: { minimum: 1 }                  
end
