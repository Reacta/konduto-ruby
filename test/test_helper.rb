require 'factory_bot'

def load_resource(resource)
  JSON.parse(File.read("test/resources/#{resource}"))
end

def diff_hashes(a, b)
  a.merge(b) { |k, v1, v2| v1 == v2 ? :equal : [v1, v2] }
     .reject { |_, v| v == :equal }
     .keys
end

FactoryBot.find_definitions
