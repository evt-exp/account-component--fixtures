module AccountComponent
  module Controls
    module Events
      module Held
        def self.example
          released = AccountComponent::Messages::Events::Held.build

          released.account_id = Account.id
          released.amount = Cash.amount
          released.time = Controls::Time::Effective.example
          released.processed_time = Controls::Time::Processed.example
          released.sequence = sequence

          released
        end

        def self.sequence
          Sequence.example
        end
      end
    end
  end
end
