class Group < ApplicationRecord
    has_many :concerts

    def my_concerts
        self.concerts.map{|concert| concert.id}.count
    end
end
