class QuestionList{
  var images = [
    "alligator", "cat", "dog", "owl","alligator", "cat", "dog", "owl","alligator", "cat", "dog", "owl","alligator", "cat", "dog", "owl", "owl", "owl", "owl", "owl", "owl", "owl"//22
  ];

  var cuestionario = [
    "Realización de exámenes",
    "Falta de tiempo para cumplir con las actividades académicas",
    "Competitividad entre compañeros ",
    "Realización de trabajos obligatorios para aprobar las asignaturas (búsquedas materiales, redacción trabajos, …)",
    "La tarea de estudiar ",
    "Trabajar en grupo",
    "Poder asistir a todas las clases ",
    "Exceso de responsabilidad por cumplir mis obligaciones académicas",
    "Elección de materias durante la carrera ",
    "Acabar la carrera en los plazos estipulados ",//10
    "Presión familiar por obtener resultados académicos adecuados",
    "Sobrecarga de tareas y trabajos escolares ",
    "La personalidad y carácter del Maestro",
    "Las evaluaciones de los maestros",
    "No entender los temas que se tratan en la clase",
    "Tiempo limitado por hacer el trabajo ",
    "Participar en clases ",
    "Tengo insomnio o pesadillas cuando algún trabajo académico se aproxima",
    "Si hay sobrecargas de tareas y trabajos, no soy capaz de realizarlos. ",
    "Desgano para realizar actividades escolares ",//10
    "Te sientes incapaz de mantenerte relajado o estar tranquilo ",
    "Sensación de cansancio extremo o agotamiento",//22
  ];

  List<Map<String, dynamic>> cosas =[
    {
      'id': 1,
      'question': "Realización de exámenes",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 2,
      'question': "Falta de tiempo para cumplir con las actividades académicas",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 3,
      'question': "Competitividad entre compañeros ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 4,
      'question': "Realización de trabajos obligatorios para aprobar las asignaturas (búsquedas materiales, redacción trabajos, …)",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 5,
      'question': "La tarea de estudiar ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 6,
      'question': "Trabajar en grupo",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 7,
      'question': "Poder asistir a todas las clases ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 8,
      'question': "Exceso de responsabilidad por cumplir mis obligaciones académicas",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 9,
      'question': " Exceso de responsabilidad por cumplir mis obligaciones académicas ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 10,
      'question': "Elección de materias durante la carrera ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
        {
      'id': 11,
      'question': "Acabar la carrera en los plazos estipulados ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 12,
      'question': "Presión familiar por obtener resultados académicos adecuados",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 13,
      'question': "Sobrecarga de tareas y trabajos escolares ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 14,
      'question': "La personalidad y carácter del Maestro",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 15,
      'question': "Las evaluaciones de los maestros",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 16,
      'question': " No entender los temas que se tratan en la clase",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 17,
      'question': "Tiempo limitado por hacer el trabajo ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 18,
      'question': " Participar en clases ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 19,
      'question': "Tengo insomnio o pesadillas cuando algún trabajo académico se aproxima",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 20,
      'question': "Si hay sobrecargas de tareas y trabajos, no soy capaz de realizarlos. ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 21,
      'question': "Desgano para realizar actividades escolares ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 22,
      'question': "Te sientes incapaz de mantenerte relajado o estar tranquilo ",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    {
      'id': 23,
      'question': "Sensación de cansancio extremo o agotamiento",
      'opt1': 1,
      'opt2': 2,
      'opt3': 3,
      'opt4': 4,
      'opt5': 5,
      'extra': 15
    },
    ];

  //var questions = [
  //  "This animal is a carnivorous reptile.",
  //  "_________ like to chase mice and birds.",
  //  "Give a _________ a bone and he will find his way home",
  //  "A nocturnal animal with some really big eyes",
  //];


  var choices = [
    ["1", "2", "3", "4"],
    ["1", "2", "3", "4"],
    ["1", "2", "3", "4"],
    ["1", "2", "3", "4"],
    ["Cat", "Snail", "Slug", "Horse"],
    ["Mouse", "Dog", "Elephant", "Donkey"],
    ["Spider", "Snake", "Hawk", "Owl"],
    ["Cat", "Sheep", "Alligator", "Cow"],
    ["Cat", "Snail", "Slug", "Horse"],
    ["Mouse", "Dog", "Elephant", "Donkey"],
    ["Spider", "Snake", "Hawk", "Owl"],
    ["Cat", "Sheep", "Alligator", "Cow"],
    ["Cat", "Snail", "Slug", "Horse"],
    ["Mouse", "Dog", "Elephant", "Donkey"],
    ["Spider", "Snake", "Hawk", "Owl"],
    ["Cat", "Sheep", "Alligator", "Cow"],
    ["Cat", "Snail", "Slug", "Horse"],
    ["Mouse", "Dog", "Elephant", "Donkey"],
    ["Spider", "Snake", "Hawk", "Owl"],
    ["Spider", "Snake", "Hawk", "Owl"],
    ["Spider", "Snake", "Hawk", "Owl"],
    ["Spider", "Snake", "Hawk", "Owl"],
  ];

  var correctAnswers = [
    "1", "2", "3", "4", "1", "2", "3", "4", 
        "Alligator", "Cat", "Dog", "Owl",    "Alligator", "Cat", "Dog", "Owl",
            "Alligator", "Cat", "Dog", "Owl", "Dog", "Owl"
  ];
}