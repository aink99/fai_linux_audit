default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server'
case node['platform']
when 'oracle'
  default['audit']['profiles'] = [
    {
      'name' => 'linux',
      'compliance' => 'audit/cis-oraclelinux7-level1',
    },
  ]
when 'redhat'
  default['audit']['profiles'] = [
    {
      'name' => 'linux',
      'compliance' => 'audit/cis-rhel7-level1-server',
    },
  ]

end



#   "platform": "oracle",
  #  "platform_version": "7.5",
  #  "platform_family": "rhel",
  #  "hostnamectl": {
