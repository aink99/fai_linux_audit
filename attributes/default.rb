default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server'
case node['platform']
when 'oracle'
  case node['platform_version']
  when /^7/
    default['audit']['profiles'] = [
      {
        'name' => 'Linux-Oracle-7',
        'compliance' => 'audit/cis-oraclelinux7-level1',
      },
    ]
  when /^6/
    default['audit']['profiles'] = [
      {
        'name' => 'Linux-Oacle-6',
        'compliance' => 'audit/cis-ol6-level1-server',
      },
    ]
  end
when 'redhat'
  case node['platform_version']
  when /^7/
    default['audit']['profiles'] = [
      {
        'name' => 'Linux-RedHat-7',
        'compliance' => 'audit/cis-rhel7-level1-server',
      },
    ]
  when '/^6/'
    default['audit']['profiles'] = [
      {
        'name' => 'Linux-RedHat-6',
        'compliance' => 'audit/cis-rhel6-level1-server',
      },
    ]
  end
when 'suse'
  case node['platform_version']
  when /^12/
    default['audit']['profiles'] = [
      {
        'name' => 'Linux-Suse-12',
        'compliance' => 'audit/cis-sles12-level1',
      },
    ]
  end
end
