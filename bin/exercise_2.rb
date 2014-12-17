require_relative '../data/crm'
require 'pp'

employment_list = []

CRM[:people].each do |person|

    if person[:employments] != []

  person[:employments].each do |employment|
     employment_info = {   
      [:person_id]
      [:person_first_name]
      [:person_last_name]
      [:title]}

  CRM[:companies].each do |company|

    if employment[:company_id] == company[:id]
      employment_info[:company_id] = company[:id]
      emplyment_info[:company_name] = company[:name]
    end

## Challenge #2 - all employments

Write some code that will return an array of all the employments,
including the person name, company name, person id, company id
and title.

```ruby
[
  {
    :company_id => 4,
    :company_name => "Nicolas and Sons",
    :person_id => 20,
    :person_first_name => "Savannah",
    :person_last_name => "Clementina",
    :title => "Chief Communications Consultant"
  },
  {
    :company_id => 6,
    :company_name => "Mueller LLC",
    :person_id => 20,
    :person_first_name => "Elyse",
    :person_last_name => "Jensen",
    :title => "Human Directives Engineer"
  },
]
