# Licensed under the oDesk's API Terms of Use;
# you may not use this file except in compliance with the Terms.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Author::    Maksym Novozhylov (mnovozhilov@odesk.com)
# Copyright:: Copyright 2014(c) oDesk.com
# License::   See LICENSE.txt and TOS - https://developers.odesk.com/api-tos.html

module Odesk
  module Api
    # Logger for debug process
    class Logger
      # Print information string and dump parameter if any
      #
      # Arguments:
      #  str: (String)
      #  param: (Mixed)
      def i(str, param = nil)
        if $DEBUG
          puts "> #{str}"
          if param
            puts "<< dump-begin >>"
            p param
            puts "<< dump-end >>"
          end
        end
      end
    end
  end
end