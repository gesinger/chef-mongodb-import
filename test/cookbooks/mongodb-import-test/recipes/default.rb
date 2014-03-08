include_recipe 'mongodb::10gen_repo'
include_recipe 'mongodb::default'

export_file_name = 'exported_mongo.json'
cookbook_file export_file_name do
  path "/tmp/#{export_file_name}"
  action :create_if_missing
end

include_recipe 'mongodb-import::default'
