default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server'
case node['platform']
when 'oracle'
  case node['platform_version']
  when /^7/
    default['audit']['profiles'] = [
      {
        'name' => 'linux',
        'compliance' => 'audit/cis-oraclelinux7-level1',
      },
    ]
  when /^6/
    default['audit']['profiles'] = [
      {
        'name' => 'linux',
        'compliance' => 'audit/cis-rhel6-level1-server',
      },
    ]
  end
when 'redhat'
  default['audit']['profiles'] = [
    {
      'name' => 'linux',
      'compliance' => 'audit/cis-rhel7-level1-server',
    },
  ]

end



#   "platform": "oracle",
  #  "platform_version": "/^7./",
  #  "platform_family": "rhel",
  #  "hostnamectl": {
