# Cookbook Name:: mongodb-import
# Recipe:: default

host          = node[:mongodb_import][:host]
port          = node[:mongodb_import][:port]
db            = node[:mongodb_import][:db]
dbpath        = node[:mongodb_import][:dbpath]
collection    = node[:mongodb_import][:collection]
file          = node[:mongodb_import][:file]
use_journal   = node[:mongodb_import][:use_journal]
ignore_blanks = node[:mongodb_import][:ignore_blanks]
tail          = node[:mongodb_import][:tail]

import_script = "mongoimport"
if host
  import_script += " --host #{host}"
end
if port
  import_script += " --port #{port}"
end
if db
   import_script += " --db #{db}"
end
if dbpath
   import_script += " --dbpath #{dbpath}"
end
if collection
   import_script += " --collection #{collection}"
end
if use_journal
   import_script += " --journal"
end
if ignore_blanks
   import_script += " --ignoreBlanks"
end

import_script += " --file #{file}"

if tail
  import_script += " #{tail}"
end

execute "run import script" do
  command import_script
end
