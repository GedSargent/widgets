class Widget < ApplicationRecord
  belongs_to :manufacturer

  # p.208 - instance methods should implement domain concepts
  #         derivable directly from the database
  def user_facing_identifier
    id_as_string = self.id.to_s
    if id_as_string.length < 3
      return id_as_string
    end

    "%{first}.%{last_two}" % {
      first: id_as_string[0..-3],
      last_two: id_as_string[-2..-1]
    }
  end

  self.fresh = self.where(status: "fresh")
end
