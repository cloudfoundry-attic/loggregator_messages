class LogMessage
  def message_type_name
    {MessageType::OUT => 'STDOUT', MessageType::ERR => 'STDERR'}[message_type]
  end

  def source_type_name
    {SourceType::CLOUD_CONTROLLER => 'CloudController',
     SourceType::ROUTER => 'Router',
     SourceType::UAA => 'UAA',
     SourceType::DEA => 'DEA',
     SourceType::WARDEN_CONTAINER => 'WardenContainer',}[source_type]
  end
end
