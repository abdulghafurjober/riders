class Assignment < ApplicationRecord
    before_create :create_unique_identifier
    belongs_to :rider
    belongs_to :request
    

    def create_unique_identifier
        loop do
            self.unique_code = SecureRandom.hex(5) # or whatever you chose like UUID tools
            break unless self.class.exists?(:unique_code => unique_code)
        end
    end
end
