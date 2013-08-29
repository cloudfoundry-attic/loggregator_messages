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

  describe "#source_type_name" do
    it "returns CloudController for type == 1" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 1,
              :timestamp => 3,
              :source_type => 1
          })

      expect(msg.source_type_name).to eq("CloudController")
    end

    it "returns Router for type == 2" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 2
          })

      expect(msg.source_type_name).to eq("Router")
    end
    it "returns UAA for type == 3" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 3
          })

      expect(msg.source_type_name).to eq("UAA")
    end
    it "returns DEA for type == 4" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 4
          })

      expect(msg.source_type_name).to eq("DEA")
    end
    it "returns WardenContainer for type == 5" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 5
          })

      expect(msg.source_type_name).to eq("WardenContainer")
    end
  end
end
