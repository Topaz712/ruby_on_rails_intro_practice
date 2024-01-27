class User < ApplicationRecord
  validate :name_cannot_contain_numbers

  def name_cannot_contain_numbers
    if name.match(/\d/)
      errors.add(:name, "cannot contain numbers")
    end
  end
end
