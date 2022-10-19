class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    # self.freebies.find_by(item_name: item_name) ? true : false
    # if freebies.find_by(item_name: item_name) == nil
    #   false
    # else
    #   true
    # end
    # self.freebies.find_by(item_name: item_name) != nil
    freebies.exists?(item_name: item_name)
  end

  def give_away(dev, freebie)
    # changes the freebie's dev to be the given dev; 
    if received_one?(freebie.item_name)
      freebie.update(dev_id: dev.id)
    end
  end
end
