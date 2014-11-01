class Apple < ActiveRecord::Base
  self.inheritance_column = nil

  fuzzily_searchable :type

  Apple.bulk_update_fuzzy_type
  Apple.find_by_fuzzy_type("honeycrisp")
end
