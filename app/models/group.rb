class Group < ApplicationRecord
    has_many :concerts, :dependent => :destroy
    validates :name, :members, :gender, presence: true

    def my_concerts
        concerts.where(group_id: id).map{|concert| concert.id}.count
    end

    def attendance
        concerts.where(group_id: id).map{|concert| concert.attendance}
    end

    def concerts_this_month
        concerts.where(group_id: id).map{|concert| concert.date.to_date.month}.count(Time.now.month)
    end

    def last_concert
        concerts.where(group_id: id).map{|concert| concert.date.strftime("%Y:%B:%A")}.last
    end
    
    def maximum_attendance
        concerts.where(group_id: id).map{|concert| concert.attendance}.max
    end

    def longest_time
        concerts.where(group_id: id).map{|concert| concert.duration}.max
    end

    def debut_date
        concerts.where(group_id: id).map{|concert| concert.date}.min
    end
end
