class LogMessage
  def message_type_name
    {MessageType::OUT => 'STDOUT', MessageType::ERR => 'STDERR'}[message_type]
  end
end