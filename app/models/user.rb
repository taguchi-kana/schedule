class User < ApplicationRecord
   validates :title, presence: true
   validates :starting, presence: true
   validates :ending, presence: true
   validate :date_before_start
   validate :start_end_check

   def date_before_start
      return if starting.blank?
      errors.add(:starting, "は今日以降のものを選択してください") if starting < Date.today
   end

  def start_end_check
    errors.add(:ending, "の日付は開始日よりも後の日付にしてください") unless
    self.starting < self.ending
  end
end