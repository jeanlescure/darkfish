![jfish logo](https://github.com/jeanlescure/jfish/raw/master/lib/template/jfish/images/logo.png)

# JFish Rdoc 4.0.0+ Generator

This is a complete replacement for the default HTML generator for Rdoc 4.0.0

It was forked from https://github.com/ged/darkfish and modified to look a little greener and meaner.

## Getting Started

You can install it via RubyGems:

  `$ gem install jfish`

## Usage

Specify from your Rakefile in an RDocTask:

  require 'rdoc/task'
  Rake::RDocTask.new do |rdoc|
  
    require 'jfish' #=> THIS IS IMPORTANT
    
    version = File.exist?('VERSION') ? File.read('VERSION') : ""
    
    rdoc.rdoc_dir = 'rdoc'
    
    rdoc.generator = 'jfish' #=> THIS IS IMPORTANT TOO
    
    rdoc.title = "hipster_sql_to_hbase #{version}"
    rdoc.rdoc_files.include('README.rdoc')
    rdoc.rdoc_files.include('lib/**/*.rb').exclude(/lib\/adapter/,/lib\/datatype_extras.rb/)
  end
  
  
That's it. JFish will automatically register itself to RDoc when required so that all you have to do is set it as the default generator.

The important parts from the above code to add to your task are these:

  require 'jfish'
  
and
  
  rdoc.generator = 'jfish'

Once that's done, just call your rake task like so: `$ rake rdoc`

## Logo

In order to customize your rdoc with your logo simply replace the following path (relative to your generated 'rdoc' folder root):

  `images/logo.png`

## License

See the LICENSE file included with the distribution for copyright and licensing details.

