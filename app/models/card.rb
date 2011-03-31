class Card < ActiveRecord::Base
  scoped_search :on => [:contact, :company, :position, :email, :phone, :city]
  cattr_reader :per_page
  @@per_page = 50
end
