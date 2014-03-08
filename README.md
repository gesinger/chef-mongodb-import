### chef-mongodb-import

A Chef cookbook for importing data into a mongodb database.

### Usage

Add to your Berksfile or Cheffile:

  cookbook 'mongodb-import', :git => 'git://github.com/gesinger/mongodb-import.git'

### Attributes

See full documentation for mongoimport for all available parameters.

* `mongodb_import[:file]` - The location of the file to import on the remote host
* `mongodb_import[:db]` - The mongodb database name
* `mongodb_import[:collection]` - The mongodb collection name
* `mongodb_import[:host]`
* `mongodb_import[:port]`
* `mongodb_import[:dbpath]`
* `mongodb_import[:use_journal]`
* `mongodb_import[:ignore_blanks]`
* `mongodb_import[:tail]` - Any additional parameters you want to pass to mongoimport
