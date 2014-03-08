### chef-mongodb-import

A Chef cookbook for importing data into a mongodb database.

### Usage

Add to your Berksfile or Cheffile:

```ruby
  cookbook 'mongodb-import', :git => 'git://github.com/gesinger/chef-mongodb-import.git'
```

Specify the attributes you want to use, and the mongodb-import::default recipe
in your run list (this example uses the vagrant synced folder):

```json
  "mongodb_import": {
    "db": "mydb",
    "collection": "mycollection",
    "file": "/vagrant/files/exported_data.json"
  },
  "run_list": [
    "recipe[mongodb-import::default]"
  ]
```

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

### Building and Testing

mongodb-import uses an internal cookbook for testing called mongodb-import-test.
This does some file copying and external cookbook running in order to properly
test that the data was imported.

In order to test everything yourself:

1) Check out the repo

2) Run `berks install`

3) Run `kitchen test`
