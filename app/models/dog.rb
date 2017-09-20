class Dog < ApplicationRecord
  DOG_COLORS = ['brown', 'black', 'white', 'grey', 'golden', 'other']

  validates :birth_date, :color, :name, :breed, :description, presence: true
  validates :color, inclusion: { in: DOG_COLORS, message: 'Pick a different color.' }
  validates :sex, inclusion: { in: ['M', 'F'], message: "Only 'M' and 'F' are valid inputs." }

  def age
    diff = (Date.today - self.birth_date).to_i
    years = diff / 365

    if years != 0
      return years < 2 ? "#{years} year" : "#{years} years"
    else
      months = diff / 30
    end

    months < 2 ? "#{months} month" : "#{months} months"
  end
end
