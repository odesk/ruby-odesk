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
      class Mc
        ENTRY_POINT = 'api'
        
        # Init
        #
        # Arguments:
        #  client: (Client)
        def initialize(client)
          @client = client
          @client.epoint = ENTRY_POINT 
        end
        
        # Get trays
        def get_trays
          $LOG.i "running " + __method__.to_s
          @client.get '/mc/v1/trays'
        end
        
        # Get tray by type
        #
        # Arguments:
        #  username: (String)
        #  type: (String)
        def get_tray_by_type(username, type)
          $LOG.i "running " + __method__.to_s
          @client.get '/mc/v1/trays/' + username + '/' + type
        end
        
        # List thread details based on thread id
        #
        # Arguments:
        #  username: (String)
        #  thread_id: (String)
        def get_thread_details(username, thread_id)
          $LOG.i "running " + __method__.to_s
          @client.get '/mc/v1/threads/' + username + '/' + thread_id
        end
        
        # Send new message
        #
        # Arguments:
        #  username: (String)
        #  params: (Hash)
        def start_new_thread(username, params = {})
          $LOG.i "running " + __method__.to_s
          @client.post '/mc/v1/threads/' + username, params
        end
        
        # Reply to existent thread
        #
        # Arguments:
        #  username: (String)
        #  thread_id: (String)
        #  params: (Hash)
        def reply_to_thread(username, thread_id, params = {})
          $LOG.i "running " + __method__.to_s
          @client.post '/mc/v1/threads/' + username + '/' + thread_id, params
        end
        
        # Update threads based on user actions
        #
        # Arguments:
        #  username: (String)
        #  thread_id: (String)
        #  params: (Hash)
        def mark_thread(username, thread_id, params = {})
          $LOG.i "running " + __method__.to_s
          @client.put '/mc/v1/threads/' + username + '/' + thread_id, params
        end
      end
    end
  end
end