require_relative '../data/crm'
require 'pp'
#
result = []

CRM[:companies].each do |company|

  employees_array = []

  CRM[:people].each do |person|
    person[:employments].each do |employment|
      if employment[:company_id] == company[:id]
        employee = {id: person[:id], first_name: person[:first_name],
          last_name: person[:last_name], title: employment[:title]}
        employees_array << employee
      end
    end
  end
  result << {name: company[:name], employees: employees_array}
end
pp result


## Challenge #1 - employees of companies
#
# Write some code that will return an array of companies,
# and the people who work for them.  For example:
#
# ```ruby
# [
#   {
#     name: "Nicolas and Sons",
#     employees: [
#       {
#         :id => 20,
#         :first_name => "Savannah",
#         :last_name => "Clementina",
#         :title => "Chief Communications Consultant"
#       },
#       {
#         :id => 46,
#         :first_name => "Elyse",
#         :last_name => "Jensen",
#         :title => "Human Directives Engineer"
#       },
#     ]
#   }
# ]
