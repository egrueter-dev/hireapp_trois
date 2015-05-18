class Job < ActiveRecord::Base
  belongs_to :user

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

  EMPLOYMENT_TYPE = ["Contract", "Full Time", "Contract to Hire", "Intern", "Part Time", "Temp"]
  INDUSTRY = ["Accounting", "Add the rest on a rainy day"]
end
