class Crinja::Operator
  class Divide < Binary
    name "/"

    def value(env : Environment, op1, op2)
      if op1.number? && op2.number?
        op1.to_f / op2.to_f
      else
        raise InvalidArgumentException.new(self, "Both operators need to be numeric")
      end
    end
  end
end
