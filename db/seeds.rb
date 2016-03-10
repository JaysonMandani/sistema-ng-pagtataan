lesson = Lesson.create(name: "My Lesson Today", description: "English Lesson", teacher_id: Teacher.first.id)

schedules = [
    {
      date: Date.today,
      starts_at: "#{Date.today} 1:30 PM".to_datetime,
      ends_at: "#{Date.today} 2:00 PM".to_datetime,
      lesson_id: lesson.id,
      teacher_id: Teacher.first.id
    },
    {
      date: Date.today,
      starts_at: "#{Date.today} 2:30 PM".to_datetime,
      ends_at: "#{Date.today} 3:00 PM".to_datetime,
      lesson_id: lesson.id,
      teacher_id: Teacher.first.id
    },
    {
      date: Date.today,
      starts_at: "#{Date.today} 2:30 PM".to_datetime,
      ends_at: "#{Date.today} 3:00 PM".to_datetime,
      lesson_id: lesson.id,
      teacher_id: Teacher.first.id
    },
    {
      date: Date.today,
      starts_at: "#{Date.today} 3:30 PM".to_datetime,
      ends_at: "#{Date.today} 4:00 PM".to_datetime,
      lesson_id: lesson.id,
      teacher_id: Teacher.first.id
    },
    {
      date: Date.today + 1.day,
      starts_at: "#{Date.today + 1.day} 2:30 PM".to_datetime,
      ends_at: "#{Date.today + 1.day} 3:00 PM".to_datetime,
      lesson_id: lesson.id,
      teacher_id: Teacher.first.id
    },
    {
      date: Date.today + 2.day,
      starts_at: "#{Date.today + 2.day} 2:30 PM".to_datetime,
      ends_at: "#{Date.today + 2.day} 3:00 PM".to_datetime,
      lesson_id: lesson.id,
      teacher_id: Teacher.first.id
    }
]

schedules = Schedule.create(schedules)

p "#{schedules.count} schedules created"
