# Cookbook Name:: mongodb-import
# Recipe:: default

db            = node[:mongodb_import][:db]
dbpath        = node[:mongodb_import][:dbpath]
collection    = node[:mongodb_import][:collection]
file          = node[:mongodb_import][:file]
use_journal   = node[:mongodb_import][:use_journal]
ignore_blanks = node[:mongodb_import][:ignore_blanks]

command = "mongoimport"
if db
   command += " --db #{db}"
end
if dbpath
   command += " --dbpath #{dbpath}"
end
if collection
   command += " --collection #{collection}"
end
if use_journal
   command += " --journal"
end
if ignore_blanks
   command += " --ignoreBlanks"
end
command += " --file #{file}"

log "Running command: " + command

#action :run
