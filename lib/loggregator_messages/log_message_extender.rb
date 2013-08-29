class LogMessage
  def message_type_name
    {MessageType::OUT => 'STDOUT', MessageType::ERR => 'STDERR'}[message_type]
  end

  def source_type_name
    {SourceType::CLOUD_CONTROLLER => 'CF[CC]',
     SourceType::ROUTER => 'CF[Router]',
     SourceType::UAA => 'CF[UAA]',
     SourceType::DEA => 'CF[DEA]',
     SourceType::WARDEN_CONTAINER => 'App',}[source_type]
  end
end
