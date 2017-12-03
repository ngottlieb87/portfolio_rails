FactoryBot.define do

  factory(:user) do
    user_name('manfred')
    email("a@b.com")
    password('password')
  end

  factory(:admin, class: User) do
    user_name('wilma')
    email('c@d.com')
    password('password4')
    admin(true)
  end

  factory(:project) do
    title('Test')
    project_link('https://www.google.com')
    photo("doctorapi.png")
  end

  factory(:project_edit, class: Project) do
    user_id { FactoryBot.create(:admin).id}
    title('Test2')
    project_link('https://www.amazon.com')
  end
end
