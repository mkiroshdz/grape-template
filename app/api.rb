require 'grape'

class Api < Grape::API
  format :json
  content_type :json, 'application/json'

  get :hello do
    { hello: 'Hello grape!' }
  end
end
