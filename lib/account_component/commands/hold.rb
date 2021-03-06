module AccountComponent
  module Commands
    class Hold
      include Command

      initializer :account_id, :amount

      def self.build(account_id, amount, reply_stream_name: nil)
        instance = new(account_id, amount)
        instance.reply_stream_name = reply_stream_name
        instance.configure
        instance
      end

      def self.call(account_id, amount, reply_stream_name: nil)
        instance = build(account_id, amount, reply_stream_name: reply_stream_name)
        instance.()
      end

      def command
        Messages::Commands::Hold.build(
          account_id: account_id,
          amount: amount,
          time: clock.iso8601
        )
      end
    end
  end
end
