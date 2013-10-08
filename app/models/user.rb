class User < ActiveRecord::Base
  attr_accessible :address, :name
  validates_each :name do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
  end
end
