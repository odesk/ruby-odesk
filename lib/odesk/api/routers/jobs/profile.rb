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
      module Jobs
        # Freelancer's profile info
        class Profile
          ENTRY_POINT = 'api'
          
          # Init
          #
          # Arguments:
          #  client: (Client)
          def initialize(client)
            @client = client
            @client.epoint = ENTRY_POINT 
          end
          
          # Get specific profile
          #
          # Arguments:
          #  key: (String)
          def get_specific(key)
            $LOG.i "running " + __method__.to_s
            @client.get '/profiles/v1/jobs/' + key
          end
        end
      end
    end
  end
end