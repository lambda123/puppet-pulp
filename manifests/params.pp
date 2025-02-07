# Pulp Master Params
# @api private
class pulp::params {
  $version = 'installed'

  $manage_repo = false

  $db_name = 'pulp_database'
  $db_seeds = 'localhost:27017'
  $db_username = undef
  $db_password = undef
  $db_replica_set = undef
  $db_ssl = false
  $db_ssl_keyfile = undef
  $db_ssl_certfile = undef
  $db_verify_ssl = true
  $db_ca_path = '/etc/pki/tls/certs/ca-bundle.crt'
  $db_unsafe_autoretry = false
  $db_write_concern = undef
  $migrate_db_timeout = 300

  $server_name = downcase($facts['fqdn'])
  $key_url = '/pulp/gpg'
  $ks_url = '/pulp/ks'
  $debugging_mode = false
  $log_level = 'INFO'
  $log_type = 'syslog'
  $server_working_directory = undef

  $rsa_key = '/etc/pki/pulp/rsa.key'
  $rsa_pub = '/etc/pki/pulp/rsa_pub.key'

  $user_cert_expiration = 7
  $consumer_cert_expiration = 3650
  $serial_number_path = '/var/lib/pulp/sn.dat'

  $consumer_history_lifetime = 180
  $oauth_enabled = false
  $oauth_key = 'pulp'
  $oauth_secret = 'secret'

  $messaging_url = "tcp://${facts['fqdn']}:5672"
  $messaging_transport = 'qpid'
  $messaging_auth_enabled = true
  $messaging_ca_cert = undef
  $messaging_client_cert = undef
  $messaging_topic_exchange = 'amq.topic'
  $messaging_event_notifications_enabled = false
  $messaging_event_notification_url = undef
  $messaging_version = 'present'

  $broker_url = "qpid:///guest@${facts['fqdn']}:5672"
  $broker_use_ssl = false
  $tasks_login_method = undef

  $ca_cert = '/etc/pki/pulp/ca.crt'
  $ca_key = '/etc/pki/pulp/ca.key'
  $https_cert = $ca_cert
  $https_key = $ca_key
  $https_chain = undef
  $ssl_username = 'SSL_CLIENT_S_DN_CN'
  $enable_http = false
  $http_port = 80
  $https_port = 443
  $ssl_verify_client = 'require'
  $ssl_protocol = ['all', '-SSLv2', '-SSLv3']

  $crane_debug = false
  $crane_port = 5000
  $crane_data_dir = '/var/lib/pulp/published/docker/v2/app'

  $enable_admin = false
  $enable_katello = false
  $enable_crane = false
  $enable_rpm = true
  $enable_deb = false
  $enable_iso = true
  $enable_docker = false
  $enable_ostree = false
  $enable_puppet = false
  $enable_python = false
  $enable_parent_node = false

  $email_host = 'localhost'
  $email_port = 25
  $email_from = "no-reply@${facts['domain']}"
  $email_enabled = false

  $manage_squid = false
  $lazy_redirect_host = undef
  $lazy_redirect_port = undef
  $lazy_redirect_path = '/streamer/'
  $lazy_https_retrieval = false
  $lazy_download_interval = 10
  $lazy_download_concurrency = 5

  $consumers_crl = undef

  $manage_db = true
  $manage_broker = true
  $manage_httpd = true
  $manage_plugins_httpd = true
  $reset_cache = false

  $default_login = 'admin'
  $default_password = extlib::cache_data('foreman_cache_data', 'pulp_password', extlib::random_password(32))

  $repo_auth = false
  $disabled_authenticators = []
  $additional_wsgi_scripts = {}

  $proxy_url = undef
  $proxy_port = undef
  $proxy_username = undef
  $proxy_password = undef

  $max_keep_alive = 10000
  $num_workers = min($facts['processorcount'], 8)
  $max_tasks_per_child = undef
  $worker_timeout = 30

  $yum_max_speed = undef
  $yum_gpg_sign_repo_metadata = false
  $yum_gpg_key_id = undef
  $yum_gpg_cmd = undef

  $wsgi_processes = 3
  $wsgi_max_requests = 0
  $puppet_wsgi_processes = 3
  $show_conf_diff = false

  $node_certificate = '/etc/pki/pulp/nodes/node.crt'
  $node_verify_ssl = true
  $node_server_ca_cert = '/etc/pki/pulp/ca.crt'
  $node_oauth_effective_user = 'admin'
  $node_oauth_key = 'pulp'
  $node_oauth_secret = 'secret'

  $enable_profiling = false
  $profiling_directory = '/var/lib/pulp/c_profiles'

  $ldap_url = undef
  $ldap_bind_dn = undef
  $ldap_bind_password = undef
  $ldap_remote_user_attribute = 'sAMAccountName'
}
