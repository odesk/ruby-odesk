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
      # Custom Payments
      class Payments
        ENTRY_POINT = 'api'
        
        # Init
        #
        # Arguments:
        #  client: (Client)
        def initialize(client)
          @client = client
          @client.epoint = ENTRY_POINT 
        end
        
        # Get adjustments
        #
        # Arguments:
        #  team_reference: (String)
        #  params: (Hash)
        def submit_bonus(team_reference, params)
          $LOG.i "running " + __method__.to_s
          @client.get '/hr/v2/teams/' + team_reference + '/adjustments', params
        end
        
        # Submit bonus
        #
        # Arguments:
        #  team_reference: (String)
        #  params: (Hash)
        def get_adjustments(team_reference, params)
          $LOG.i "running " + __method__.to_s
          @client.post '/hr/v2/teams/' + team_reference + '/adjustments', params
        end
      end
    end
  end
end