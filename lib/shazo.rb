module Shazo
  def self.included(base)
    base.extend ClassMethods
  end

  def initialize(origin)
    @origin = origin
    self.class.assign_logics.each_key { |key| self[key] = instance_exec(&self.class.assign_logics[key]) }
    compact!
  end

  def origin
    @origin
  end

  module ClassMethods
    def property(attribute, assign_logic)
      @assign_logics ||= {}
      @assign_logics[attribute] = assign_logic
      @assign_logics
    end

    def assign_logics
      @assign_logics
    end
  end
end
