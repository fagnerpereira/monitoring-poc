class Validator < ActiveRecord::Base
  def self.json
    hash = {}

    Validator.all.each do |validator|
      hash[validator.class.name] = validator.disponible
    end

    hash
  end

  def validates
  end
end
