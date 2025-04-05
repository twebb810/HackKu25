// name medication timing emergency contact, age, gender, medication taken boolean
class Patient {
  // map that acts as a dictionary, key = medication, value[0] = time, value[1] = medication taken true or false
  Map<String, List<dynamic>> medications = {};

  String name;
  String age;
  String gender;

  // Constructor
  Patient ({
    required this.name,
    required this.age,
    required this.gender,
    Map<String, List<dynamic>>? medications,

 }) {
    if (medications != null) {
      this.medications = medications;
    }
  }
  // Methods
  void addMedication(String medication, String time, bool taken) {
    if (medications.containsKey(medication)) {
      medications[medication]![0] = time; 
      medications[medication]![1] = taken; 
    } else {
      medications[medication] = [time, taken];
    }
  }



}
