FactoryBot.define do

  factory(:user) do
    user_name('manfred')
    email("a@b.com")
    password('password')
  end

  factory(:admin, class: User) do
    user_name('craig')
    email('c@d.com')
    password('password1')
    admin(true)
  end

  factory(:project) do
    title('Test')
    project_link('https://www.google.com')
  end

  factory(:question_edit, class: Project) do
    title('Test2')
    project_link('https://www.amazon.com')
  end
end
