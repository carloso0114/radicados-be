class Radicado < ApplicationRecord
  before_create :generate_uuid
  validates :idDirector, uniqueness: true, presence: true, numericality: { only_integer: true }, length: { in: 6..15 }


  private

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end