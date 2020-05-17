require 'pry'


class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this


def list(companies)
    companies.each {|company| puts "#{company.name} - #{company.size}"}
end

def combined_size(companies)
    companies.reduce(0) {|sum, company| company.size + sum}
end


def companies_over_100(companies)
    companies.select {|company| company.size > 100}
end

def beta(companies)
    companies.find {|company| company.name == "Beta"}
end

def largest_company(companies)
   companies.find.max {|company| company.size}
end

def sort_by_size(companies)
    companies.sort {|company| company.size}
end

binding.pry

