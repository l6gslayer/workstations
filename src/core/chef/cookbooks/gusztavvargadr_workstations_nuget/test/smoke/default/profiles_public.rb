source_query_script = <<-EOH
  NuGet sources List
EOH
source_name = 'aspnetcore-dev'
source_address = 'https://dotnet.myget.org/F/aspnetcore-dev/api/v3/index.json'

describe powershell(source_query_script) do
  its('stdout') { should include source_name }
  its('stdout') { should include source_address }
end
