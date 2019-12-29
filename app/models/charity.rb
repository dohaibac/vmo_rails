class Charity < ActiveRecord::Base
  validates :name, presence: true

  def credit_amount(amount)
  	ActiveRecord::Base.transaction do
  	  lock!
  	  update_column :total, total + amount
  	end
  end
end
