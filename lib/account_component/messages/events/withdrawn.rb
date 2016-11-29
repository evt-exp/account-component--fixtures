module AccountComponent
  module Messages
    module Events
      class Withdrawn
        include EventStore::Messaging::Message

        attribute :account_id, String
        attribute :amount, Numeric
        attribute :time, String
        attribute :processed_time, String
        attribute :sequence, Numeric
      end
    end
  end
end