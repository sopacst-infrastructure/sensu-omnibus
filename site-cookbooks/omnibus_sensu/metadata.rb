name 'omnibus_sensu'
maintainer 'Sensu'
maintainer_email 'support@sensuapp.com'
license 'all_rights'
description 'Installs/Configures omnibus_sensu'
long_description 'Installs/Configures omnibus_sensu'
version '0.1.0'

depends 'aws', '~> 4.2'
depends 'omnibus', '~> 5.0'
depends 'git', '~> 5.0'
depends 'freebsd', '~> 1.0'
depends 'chef-sugar', '~> 3.4'
depends 'chocolatey', '~> 1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/omnibus_sensu/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/omnibus_sensu' if respond_to?(:source_url)
