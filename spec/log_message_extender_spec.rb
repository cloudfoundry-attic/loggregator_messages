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

      expect(msg.source_type_name).to eq("CF[CC]")
    end

    it "returns Router for type == 2" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 2
          })

      expect(msg.source_type_name).to eq("CF[Router]")
    end
    it "returns UAA for type == 3" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 3
          })

      expect(msg.source_type_name).to eq("CF[UAA]")
    end
    it "returns DEA for type == 4" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 4
          })

      expect(msg.source_type_name).to eq("CF[DEA]")
    end
    it "returns WardenContainer for type == 5" do
      msg = LogMessage.new(
          {
              :message => "thesearebytes",
              :message_type => 2,
              :timestamp => 3,
              :source_type => 5
          })

      expect(msg.source_type_name).to eq("App")
    end
  end

  describe "#timestamp=" do
    it "defaults to Time.now" do
      msg = LogMessage.new

      expect(Time.at(msg.timestamp/1000000000.0)).to be_within(0.5).of(Time.now)
    end

    it "takes a time object" do
      msg = LogMessage.new
      msg.timestamp = Time.utc(2010, 1, 20, 19, 18, 17.654321011)

      expect(msg.timestamp).to eq 1264015097654321011
    end

    it "takes a time in seconds since the epoch" do
      msg = LogMessage.new
      msg.timestamp = 1379087263

      expect(msg.timestamp).to eq 1379087263000000000
    end

    it "takes a time in fractional seconds since the epoch" do
      msg = LogMessage.new
      msg.timestamp = 1379087263.654321

      expect(msg.timestamp).to eq 1379087263654320955
    end
  end

  describe "#time" do
    it "returns a time object" do
      msg = LogMessage.new
      msg.timestamp = 1379087263

      expect(msg.time).to be_a Time
    end

    it "returns a time object with nanosecond precision" do
      msg = LogMessage.new
      msg.timestamp = Time.utc(2010, 1, 20, 19, 18, 17.654321011)

      expect(msg.time.tv_nsec).to eq 654321011
    end
  end
end
