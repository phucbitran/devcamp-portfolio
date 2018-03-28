3.times do 
	Topic.create!(title: Faker::Lorem.word)
end

10.times do |blog|
	Blog.create!(title: "My Blog Post #{blog}",
				body: Faker::Lorem.paragraphs,
				topic_id: Topic.last.id)
end

8.times do 
	Portfolio.create!(
		title: Faker::Lorem.sentence,
		subtitle: Faker::Lorem.sentence,
		body: Faker::Lorem.paragraphs,
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200")
end

1.times do 
	Portfolio.create!(
		title: Faker::Lorem.sentence,
		subtitle: "Ruby on rails",
		body: Faker::Lorem.paragraphs,
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200")
end

3.times do |t|
	Portfolio.last.technologies.create(name: "Technology #{t}")
end

5.times do |skill|
	Skill.create!(title: "My Blog Post #{skill}",
				percent_utilized: 15 )
end

