require 'securerandom'

class TestTable < ActiveRecord::Base

  # We still use the same column name of `id` as Rails is used to.
  self.primary_key='id'

  # Ensuring that the model has a unique id before the create step
  before_create :generate_id

  private

  def generate_id
    # Only assign a new uuid when there isn't one currently.
    # One could also check to see if the record had not been persisted,
    # but checking for a nid id allows a caller to pass in something they
    # want as the id on initialization.
    self.id = SecureRandom.uuid if self.id.nil?
  end
end
