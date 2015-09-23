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
      module Hr
        module Clients
          # Client Job Offers API
          class Offers
            ENTRY_POINT = 'api'
            
            # Init
            #
            # Arguments:
            #  client: (Client)
            def initialize(client)
              @client = client
              @client.epoint = ENTRY_POINT 
            end
            
            # Get list of offers
            #
            # Arguments:
            #  params: (Hash)
            def get_list(params)
              $LOG.i "running " + __method__.to_s
              @client.get '/offers/v1/clients/offers', params
            end
            
            # Get specific offer
            #
            # Arguments:
            #  reference: (String)
            #  params: (Hash)
            def get_specific(reference, params)
              $LOG.i "running " + __method__.to_s
              @client.get '/offers/v1/clients/offers/' + reference, params
            end
            
            # Make an Offer
            #
            # Arguments:
            #  params: (Hash)
            def make_offer(params)
              $LOG.i "running " + __method__.to_s
              @client.post '/offers/v1/clients/offers', params
            end
          end
        end
      end
    end
  end
end