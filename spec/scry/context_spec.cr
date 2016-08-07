require "../spec_helper"
require "../../src/scry/context"
require "../../src/scry/protocol/procedure"


module Scry

  describe Context do

    it "dispatches commands" do
      context = Context.new

      procedure = Procedure.new(INITIALIZATION_EXAMPLE).parse
      result = context.dispatch(procedure)
      result.is_a?(InitializeResponse).should be_true

      procedure = Procedure.new(NOTIFICATION_EXAMPLE).parse
      context.dispatch(procedure)

      procedure = Procedure.new(DOC_OPEN_EXAMPLE).parse
      context.dispatch(procedure)
    end


  end

end