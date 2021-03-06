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
      # Work Diary
      class Workdiary
        ENTRY_POINT = 'api'
        
        # Init
        #
        # Arguments:
        #  client: (Client)
        def initialize(client)
          @client = client
          @client.epoint = ENTRY_POINT 
        end
        
        # Get Workdiary
        # Arguments:
        #  company: (String)
        #  username: (String)
        #  date: (String)
        #  params: (Hash)
        def get(company, username, date, params = {})
          $LOG.i "running " + __method__.to_s
          @client.get '/team/v1/workdiaries/' + company + '/' + username + '/' + date, params
        end
        
        # Get Work Diary by Contract
        # Arguments:
        #  contract: (String)
        #  date: (String)
        #  params: (Hash)
        def get_by_contract(contract, date, params = {})
          $LOG.i "running " + __method__.to_s
          @client.get '/team/v2/workdiaries/contracts/' + contract + '/' + date, params
        end
      end
    end
  end
end
