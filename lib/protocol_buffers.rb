require 'stringio'

module ProtocolBuffers
  # for 1.9.2 compatibility
  def self.bin_sio(*args)
    sio = StringIO.new(*args)
    sio.set_encoding('binary') if sio.respond_to?(:set_encoding)
    sio
  end
end

require 'protocol_buffers/version'
require 'protocol_buffers/runtime/message'
