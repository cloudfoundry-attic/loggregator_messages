require "rspec"
require "loggregator_messages"

describe LogMessage do
  describe "#message_type_name" do
    it "returns STDOUT for type == 1" do
      msg = LogMessage.new(
        {
          :message => "thesearebytes",
          :message_type => 1,
          :timestamp => 3,
          :source_type => 3
        })

      expect(msg.message_type_name).to eq("STDOUT")
    end

    it "returns STDERR for type == 2" do
      msg = LogMessage.new(
        {
          :message => "thesearebytes",
          :message_type => 2,
          :timestamp => 3,
          :source_type => 3
        })

      expect(msg.message_type_name).to eq("STDERR")
    end
  end
end