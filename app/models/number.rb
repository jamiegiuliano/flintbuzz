# Handles Flintbuzz logic
class Number < ApplicationRecord
  def output
    entry = input.to_i
    if (entry % 15).zero?
      'flintbuzz'
    elsif (entry % 5).zero?
      'buzz'
    elsif e(entry % 3).zero?
      'flint'
    else
      entry
    end
  end
end
