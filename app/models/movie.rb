class Movie < ActiveRecord::Base
    def self.all_ratings
        buffer = Array.new
        self.select("rating").uniq.each {|y| buffer.push(y.rating)}
        buffer.sort.uniq
    end
end
