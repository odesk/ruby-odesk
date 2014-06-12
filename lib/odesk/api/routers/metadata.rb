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
      # Get Metadata
      class Metadata
        ENTRY_POINT = 'api'
        
        # Init
        #
        # Arguments:
        #  client: (Client)
        def initialize(client)
          @client = client
          @client.epoint = ENTRY_POINT 
        end
        
        # Get categories
        def get_categories
          $LOG.i "running " + __method__.to_s
          @client.get '/profiles/v1/metadata/categories'
        end
        
        # Get skills
        def get_skills
          $LOG.i "running " + __method__.to_s
          @client.get '/profiles/v1/metadata/skills'
        end
        
        # Get regions
        def get_regions
          $LOG.i "running " + __method__.to_s
          @client.get '/profiles/v1/metadata/regions'
        end
        
        # Get tests
        def get_tests
          $LOG.i "running " + __method__.to_s
          @client.get '/profiles/v1/metadata/tests'
        end
        
        # Get reasons
        #
        # Arguments:
        #  params: (Hash)
        def get_reasons(params)
          $LOG.i "running " + __method__.to_s
          @client.get '/profiles/v1/metadata/reasons', params;
        end
      end
    end
  end
end