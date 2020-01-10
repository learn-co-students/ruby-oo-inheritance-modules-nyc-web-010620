require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'
class Dancer
    include FancyDance::InstanceMethods
    include Dance
    extend FancyDance::ClassMethods
    extend MetaData

    attr_accessor :name

    def initialize(name)
        @name = name
    end

end