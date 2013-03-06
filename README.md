# Usage

## Simple Scripts

    ./scripts/prep.sh [HOSTNAME]
    # with or without HOSTNAME
    + bundle install --path vendor/bundle
    + bundle exec berks install --path cookbooks

    # with HOSTNAME
    + bundle exec knife init HOSTNAME

    # If run without a hostname, you'll need to manually init
    # at some point with:
    #
    # knife solo init HOSTNAME

    ./scripts/cook.sh HOSTNAME
    + bundle exec knife solo cook HOSTNAME

    ./scripts/wash.sh [HOSTNAME]
    # with HOSTNAME
    + bundle install
    + bundle exec knife solo clean HOSTNAME

    # with or without HOSTNAME
    + rm -rf ~/.berkshelf
    + rm -rf ./cookbooks/*

    # If run without a hostname, you can clean up the host
    # manually with:
    #
    # knife solo clean HOSTNAME


### Install gems

   bundle install --path vendor/bundle

### Install cookbooks

   bundle exec berks install --path cookbook

### Create node file

   touch nodes/HOSTNAME.json

   echo '{ "run_list": [ "recipe[recipe_name::recipe]" ] }' >> nodes/HOSTNAME.json

### Bootstrap node

   bundle exec knife solo bootstrap HOSTNAME [-P PASSWORD]

