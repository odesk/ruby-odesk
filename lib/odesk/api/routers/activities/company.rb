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
      module Activities
        # Company Activities
        class Company
          ENTRY_POINT = 'api'
          
          # Init
          #
          # Arguments:
          #  client: (Client)
          def initialize(client)
            @client = client
            @client.epoint = ENTRY_POINT 
          end
          
          # List all oTask/Activity records within a Company
          #
          # Arguments:
          #  company: (String)
          def get_list(company)
            get_by_type company, nil, false
          end
          
          # List all oTask/Activity records within a Company with additional info
          #
          # Arguments:
          #  company: (String)
          def get_full_list(company)
            get_by_type company, nil, true
          end
          
          # List all oTask/Activity records within a Company by specified code(s)
          #
          # Arguments:
          #  company: (String)
          #  code: (String)
          def get_specific_list(company, code)
            get_by_type company, code, false
          end
          
          # Create an oTask/Activity record within a company
          #
          # Arguments:
          #  company: (String)
          #  params: (Hash)
          def add_activity(company, params)
            @client.post '/otask/v1/tasks/companies/' + company + '/tasks', params
          end
          
          # Update specific oTask/Activity record within a company
          #
          # Arguments:
          #  company: (String)
          #  code: (String)
          #  params: (Hash)
          def update_activities(company, code, params)
            @client.put '/otask/v1/tasks/companies/' + company + '/tasks/' + code, params
          end
          
          # Update a group of oTask/Activity records within a company
          #
          # Arguments:
          #  company: (String)
          #  params: (Hash)
          def update_batch(company, params)
            @client.put '/otask/v1/tasks/companies/' + company + '/tasks/batch', params
          end
          
          # Delete specific oTask/Activity record within a company
          #
          # Arguments:
          #  company: (String)
          #  code: (String)
          def delete_activities(company, code)
            @client.delete '/otask/v1/tasks/companies/' + company + '/tasks/' + code
          end
          
          # Delete all oTask/Activity records within a company
          #
          # Arguments:
          #  company: (String)
          def delete_all_activities(company)
            @client.delete '/otask/v1/tasks/companies/' + company + '/tasks/all_tasks'
          end
          
          private
          
          # Get by type
          def get_by_type(company, code = nil, is_full = false)
            $LOG.i "running " + __method__.to_s
            url = '';
            if (is_full)
                url = '/full_list';
            elsif code != nil
                url = '/' + code;
            end
    
            @client.get '/otask/v1/tasks/companies/' + company + '/tasks' + url
          end
        
        end
      end
    end
  end
end