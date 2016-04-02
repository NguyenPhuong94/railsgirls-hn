json.array!(@bangdiemhocsinhs) do |bangdiemhocsinh|
  json.extract! bangdiemhocsinh, :id, :Name, :Date, :Lop, :Sumary
  json.url bangdiemhocsinh_url(bangdiemhocsinh, format: :json)
end
