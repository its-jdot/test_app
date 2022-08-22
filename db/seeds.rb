# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create([
    { 
      user_name: "Jamshad"
    }
  ])


  test = Test.create([
    {
        user_id: user.first
    }
  ])

  questions = Question.create([
    {
        test_id: test.first,
        body: "Which of these words describes you best ?"
    },
    {
        test_id: test.first,
        body: "What are your favorite colors ?"
    },
    {
        test_id: test.first,
        body: "How big is your circle of friends ?"
    },
    {
        test_id: test.first,
        body: "What job would you prefer ?"
    },
    {
        test_id: test.first,
        body: "On the topic of public speaking..."
    }
  ])

  choices = Choice.create([
    {
        question_id: questions.first,
        choice_body: "Talkative",
        choice_score: 5
    },
    {
        question_id: questions.first,
        choice_body: "Focused",
        choice_score: 2
    },
    {
        question_id: questions.first,
        choice_body: "Funny",
        choice_score: 5
    },
    {
        question_id: questions.second,
        choice_body: "Gray, white, or black",
        choice_score: 2
    },
    {
        question_id: questions.second,
        choice_body: "Red, orange, or any other bright color",
        choice_score: 5
    },
    {
        question_id: questions.second,
        choice_body: "Any shade of blue or green",
        choice_score: 4
    },
    {
        question_id: questions.third,
        choice_body: "Less than 10",
        choice_score: 2
    },
    {
        question_id: questions.third,
        choice_body: "I make friends where ever I go, so I have a lot of good friends.",
        choice_score: 5
    },
    {
        question_id: questions.third,
        choice_body: "	I have many friends but there’s only 2-4 friends that I hang out with regularly.",
        choice_score: 2
    },
    {
        question_id: questions.fourth,
        choice_body: "Project Manager",
        choice_score: 5
    },
    {
        question_id: questions.fourth,
        choice_body: "Writer",
        choice_score: 2
    },
    {
        question_id: questions.fourth,
        choice_body: "Teacher",
        choice_score: 5
    },
    {
        question_id: questions.fifth,
        choice_body: "I enjoy it. All eyes on me !",
        choice_score: 5
    },
    {
        question_id: questions.fifth,
        choice_body: "It's not my strongest suit but I'll do it if I have to.",
        choice_score: 4
    },
    {
        question_id: questions.fifth,
        choice_body: "I get super nervous. I'd rather write 5 research papers first.",
        choice_score: 2
    }
  ])