require 'active_record'
require 'msgpack'

class ActiveRecord::Serializers::MessagePackSerializer
  def self.load(binary)
    return nil if binary.nil? || binary.match(/\A[[:space:]]*\z/)
    MessagePack.unpack(binary)
  end

  def self.dump(obj)
    MessagePack.pack(obj)
  end
end
