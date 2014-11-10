json.array!(@professor_schedules) do |professor_schedule|
  json.extract! professor_schedule, :id, :name, :rank, :department, :room, :email, :ext, :Course_Title, :CRN, :meeting_days, :time, :room_num, :enrollment
  json.url professor_schedule_url(professor_schedule, format: :json)
end
