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
# License::   See LICENSE.txt and TOS - http://developers.odesk.com/API-Terms-of-Use

module Odesk
  module Api
    module Routers
      module Hr
        # Contracts API
        class Contracts
          ENTRY_POINT = 'api'
          
          # Init
          #
          # Arguments:
          #  client: (Client)
          def initialize(client)
            @client = client
            @client.epoint = ENTRY_POINT 
          end
          
          # End Contract
          #
          # Arguments:
          #  reference: (String)
          #  params: (Hash)
          def end_contract(reference, params)
            $LOG.i "running " + __method__.to_s
            @client.delete '/hr/v2/contracts/' + reference, params
          end
        end
      end
    end
  end
end