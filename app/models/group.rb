class Group < ApplicationRecord
    has_many :concerts, :dependent => :destroy

    def my_concerts
        self.concerts.map{|concert| concert.id}.count
    end

    def attendance
        self.concerts.map{|concert| concert.attendance}.sum
    end

    def concerts_this_month
        self.concerts.map{|concert| concert.date.to_date.month}.count(Time.now.month)
    end

    def last_concert
        self.concerts.map{|concert| concert.date.strftime("%Y:%B:%A")}.last
    end
    
    def maximum_attendance
        self.concerts.map{|concert| concert.attendance}.max
    end

    def longest_time
        self.concerts.map{|concert| concert.duration}.max
    end
end
