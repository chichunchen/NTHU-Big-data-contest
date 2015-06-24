json.array!(@courses) do |course|
  json.extract! course, :id, :code, :title, :hosts, :schooltime, :total_hour
  json.url course_url(course, format: :json)
end
