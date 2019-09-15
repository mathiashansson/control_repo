class role::db_server {
  include profile::db
  include profile::base
  include profile::ssh_server
  }
