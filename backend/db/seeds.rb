router = PostRouter.where(title: 'How to write resume').first_or_create!

section_1 = PostRouterSection.where(title: 'Fundamentals').first_or_create!
section_2 = PostRouterSection.where(title: 'Resume Elements').first_or_create!

router.items.where(
  path: '/topic-without-section',
  post: Post.active.where(
    title: 'Topic without section',
    body: 'Topic without section'
    ).first_or_create!
).first_or_create!

router.items.where(
  section: section_1,
  path: '/how-to-write-a-resume',
  post: Post.active.where(
    title: 'How to write resume',
    body: 'How to write resume'
  ).first_or_create!
).first_or_create!

router.items.where(
  section: section_1,
  path: '/how-to-write-a-resume/resume-formats',
  post: Post.active.where(
    title: 'Resume formats',
    body: 'Resume formats'
  ).first_or_create!
).first_or_create!

router.items.where(
  section: section_2,
  path: '/how-to-write-a-resume/list-skills-on-your-resume',
  post: Post.active.where(
    title: 'Skills',
    body: 'Skills'
  ).first_or_create!
).first_or_create!

router.items.where(
  section: section_2,
  path: '/how-to-write-a-resume/list-education-on-your-resume',
  post: Post.active.where(
    title: 'Education',
    body: 'Education'
  ).first_or_create!
).first_or_create!
