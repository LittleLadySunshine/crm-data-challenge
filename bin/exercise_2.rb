require_relative '../data/crm'
require 'pp'

result = []

CRM[:people].each do |person|

  person[:employments].each do |employment|
    employment_info = {}
    employment_info[:company_id] = employment[:company_id]
    company = CRM[:companies].find {|company| company [:id] == employment[:company_id]}

    employment_info = {company_name: company[:name], person_id: person[:id],
      person_first_name: person[:first_name], person_last_name: person[:last_name],
      title: employment[:title]}

      result << employment_info
    end
  end
  pp result
  

  # ## Challenge #2 - all employments
  #
  # Write some code that will return an array of all the employments,
  # including the person name, company name, person id, company id
  # and title.
  #
  # ```ruby
  # [
  #   {
  #     :company_id => 4,
  #     :company_name => "Nicolas and Sons",
  #     :person_id => 20,
  #     :person_first_name => "Savannah",
  #     :person_last_name => "Clementina",
  #     :title => "Chief Communications Consultant"
  #   },
  #   {
  #     :company_id => 6,
  #     :company_name => "Mueller LLC",
  #     :person_id => 20,
  #     :person_first_name => "Elyse",
  #     :person_last_name => "Jensen",
  #     :title => "Human Directives Engineer"
  #   },
  # ]
