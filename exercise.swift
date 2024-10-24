// Write your code below 💪
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

// Instance of Exercise
var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

var swimming = Exercise(name: "Swimming", muscleGroups: ["Tendons", "Legs"], reps: 5, sets: 2)

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to:")

    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")

      print("That's a total of \(exercise.totalReps) \(exercise.name)")
    }
  }
}

// Instance of Regimen
var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp, swimming])

mondayRegimen.printExercisePlan()
