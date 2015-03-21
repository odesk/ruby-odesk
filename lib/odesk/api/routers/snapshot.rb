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
    module Routers
      # Snapshot
      class Snapshot
        ENTRY_POINT = 'api'
        
        # Init
        #
        # Arguments:
        #  client: (Client)
        def initialize(client)
          @client = client
          @client.epoint = ENTRY_POINT 
        end
        
        # Get snapshot info
        #
        # Arguments:
        #  company: (String)
        #  username: (String)
        #  ts: (String)
        def get(company, username, ts)
          $LOG.i "running " + __method__.to_s
          @client.get '/team/v1/snapshots/' + company + '/' + username + '/' + ts
        end
        
        # Update snapshot
        #
        # Arguments:
        #  company: (String)
        #  username: (String)
        #  ts: (String)
        #  params: (Hash)
        def update(company, username, ts, params)
          $LOG.i "running " + __method__.to_s
          @client.put '/team/v1/snapshots/' + company + '/' + username + '/' + ts, params
        end
        
        # Delete snapshot
        # Arguments:
        #  company: (String)
        #  username: (String)
        #  ts: (String)
        def delete(company, username, ts)
          $LOG.i "running " + __method__.to_s
          @client.delete '/team/v1/snapshots/' + company + '/' + username + '/' + ts
        end
        
        # Get snapshot info by specific contract
        #
        # Arguments:
        #  contract: (String)
        #  ts: (String)
        def get_by_contract(contract, ts)
          $LOG.i "running " + __method__.to_s
          @client.get '/team/v2/snapshots/contracts/' + contract + '/' + ts
        end
        
        # Update snapshot by specific contract
        #
        # Arguments:
        #  contract: (String)
        #  ts: (String)
        #  params: (Hash)
        def update_by_contract(contract, ts, params)
          $LOG.i "running " + __method__.to_s
          @client.put '/team/v2/snapshots/contracts/' + contract + '/' + ts, params
        end
        
        # Delete snapshot by specific contract
        # Arguments:
        #  contract: (String)
        #  ts: (String)
        def delete_by_contract(contract, username, ts)
          $LOG.i "running " + __method__.to_s
          @client.delete '/team/v2/snapshots/contracts/' + contract + '/' + ts
        end
      end
    end
  end
end
