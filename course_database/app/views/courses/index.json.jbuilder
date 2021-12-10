@courses.each do |course|
  json.set! course.id do
    json.extract! course, :id, :name, :release_date
  end
end