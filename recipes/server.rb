package 'httpd' do
  action :install
end

file 'var/www/html/index.html' do
  content "<h1>Hello World</h1>
  IP Address: #{node['ipaddress']}
  Hostname: #{node['hostname']}
  Memory: #{node['memory']['total']}
  CPU: #{node['cpu']['0']['mhz']}
"
end

service 'httpd' do
  action [:enable, :start]
end
