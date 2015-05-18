class Job < ActiveRecord::Base
  belongs_to :user
  scope :title, lambda { |value| scope.where(title: value) }
  scope :location, lambda { |value| scope.where(location: value) }

  def self.search(query)
    supported_queries = [:title, :location]

    binding.pry

    query.slice(*supported_queries).inject(self) do |scope, (key, value)|
      value.present? ? scope.send(key, value) : scope
    end
    # where("title like ?", "%#{query}%")
  end

  EMPLOYMENT_TYPE = ["Contract", "Full Time", "Contract to Hire", "Intern", "Part Time", "Temp"]
  INDUSTRY = ["Accounting", "Add The Rest On A Rainy Day"]
end
