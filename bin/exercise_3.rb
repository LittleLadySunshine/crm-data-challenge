require_relative '../data/crm'
require 'pp'


result = []
CRM[:people].each do |person|
  if person[:employments].empty?
    result << person.tap {|person| person.delete(:employments)}
  end
end
pp result


def unemployed(crm)
  unemployed_array = []
  crm[:people].each do |person|
    if person[:employments].empty?
      person_hash = {id: person[:id], first_name: person[:first_name],
        last_name: person[:last_name]}
        
      unemployed_array << person_hash
    end
  end
  unemployed_array
end




#
# ## Challenge #3 - people without employments
#
# Write some code that will return an array of all the people
# who have no employments.  The resulting hashes in the array should
# _not_ include the `:employments` key.
#
# ```ruby
# [
#   {
#     :id => 20,
#     :first_name => "Savannah",
#     :last_name => "Clementina"
#   },
#   {
#     :id => 32,
#     :first_name => "Elyse",
#     :last_name => "Jensen",
#   }
# ]
