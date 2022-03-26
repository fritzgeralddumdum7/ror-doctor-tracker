class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def temp
    p 'hahahahahaha'
  end
end
