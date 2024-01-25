class User < ApplicationRecord
  after_create :log_new_year
  validates :name, presence: true

  private
  def log_new_year
    puts "A New User Was Registered"
  end
end
