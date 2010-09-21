#
# = Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
#
# Category::    Net
# Package::     Whois
# Author::      Simone Carletti <weppos@weppos.net>
# License::     MIT License
#
#--
#
#++


require 'whois/answer/super_struct'


module Whois
  class Answer

    #
    # = Part
    #
    # A single <tt>Whois::Answer</tt> fragment. For instance,
    # in case of thin server, a <tt>Whois::Answer</tt> may be composed by
    # one or more parts corresponding to all responses
    # returned by the WHOIS servers.
    #
    # A <tt>Part</tt> is composed by the following attributes:
    #
    # * body - The body containing the whois output.
    # * host - The host which returned the body.
    #
    class Part < SuperStruct.new(:body, :host)

      def response=(value) # :nodoc:
        Whois.deprecate \
          "Whois::Answer::Part#response= is deprecated " \
          "and will be removed in Whois 1.5. Use Whois::Answer::Part#body=."
        self.body = value
      end

      def response # :nodoc:
        Whois.deprecate \
          "Whois::Answer::Part#response is deprecated " \
          "and will be removed in Whois 1.5. Use Whois::Answer::Part#body."
        self.body
      end

    end

  end
end
