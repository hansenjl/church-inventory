class Item < ApplicationRecord
  belongs_to :area
  belongs_to :purpose

  #TODO: Add a validation to make sure the quantity is a number between 0-10 if a number is entered. Allow a user to also not put a number.



  # TODO: Make sure there aren't duplicate items added to the db. There can be items with the same name BUT not items with the same name, area, and purpose.
  #Ex:
  #Allowed:
  #  Item.create(name:'crayons', area:'closet', purpose:'crafts') && Item.create(name:'crayons', area:'bookshelf', purpose:'crafts')
  # Not Allowed:
   #  Item.create(name:'crayons', area:'closet', purpose:'crafts') && Item.create(name:'crayons', area:'closet', purpose:'crafts')


end
