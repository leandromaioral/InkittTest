question1 = Question.create!(
  text: 'What is the 10th most spoken language worldwide?'
)
question1.answers.create!([
  {
    text: 'German',
    correct: true
  },
  {
    text: 'Bengali',
    correct: false
  },
  {
    text: 'Russian',
    correct: false
  },
  {
    text: 'Portuguese',
    correct: false
  },
  {
    text: 'Japanese',
    correct: false
  }
])

question2 = Question.create!(
  text: 'What do you most fear in hormephobia?'
)
question2.answers.create!([
  {
    text: 'Saliva',
    correct: false
  },
  {
    text: 'Shock',
    correct: true
  },
  {
    text: 'Static',
    correct: false
  },
  {
    text: 'Silence',
    correct: false
  },
  {
    text: 'Blood',
    correct: false
  }
])

question3 = Question.create!(
  text: 'Why was Charlie Brown feeling so depressed in A Charlie Brown Christmas?'
)
question3.answers.create!([
  {
    text: 'His friend was still in the psychiatric ward',
    correct: false
  },
  {
    text: 'Felt Christmas was being commercialized',
    correct: true
  },
  {
    text: 'Felt left out of a play he’d been asked to direct',
    correct: false
  },
  {
    text: 'Upset that his dog had been decorating without him',
    correct: false
  }
])

question4 = Question.create!(
  text: "The word ‘chocolate’ originates from the word ‘xocolātl’ which means what?"
)
question4.answers.create!([
  {
    text: 'Bitter seed',
    correct: false
  },
  {
    text: 'Bitter plant',
    correct: false
  },
  {
    text: 'Bitter earth',
    correct: false
  },
  {
    text: 'Bitter water',
    correct: true
  }
])

question5 = Question.create!(
  text: 'What’s the best way to stop crying while peeling onions?'
)
question5.answers.create!([
  {
    text: 'Suck lemons',
    correct: false
  },
  {
    text: 'Chew gum',
    correct: true
  }
])
