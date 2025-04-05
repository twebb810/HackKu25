// name medication timing emergency contact, age, gender, medication taken boolean
class Patient {
  // map that acts as a dictionary, key = medication, value[0] = time, value[1] = medication taken true or false
  // value[0] = time, value[1] = medication boolean, value[2] = dosage
  Map<String, List<dynamic>> medications = {};

  String name;
  String age;
  String gender;
  int dosage;

  // Constructor
  Patient ({
    required this.name,
    required this.age,
    required this.gender,
    required this.dosage,
    Map<String, List<dynamic>>? medications,

 }) {
    if (medications != null) {
      this.medications = medications;
    }
  }
  // method to add medication
  void addMedication(String medication, String time, bool taken, int dosage) {
    if (medications.containsKey(medication)) {
      medications[medication]![0] = time; 
      medications[medication]![1] = taken; 
      medications[medication]![2] = dosage;
    } else {
      medications[medication] = [time, taken];
    }
  }
  // method that returns if pateint has taken medication 
  bool hasTakenMedication(String medication) {
    if (medications.containsKey(medication)) {
      return medications[medication]![1] as bool; // return the boolean value
    }
    return false; // if medication not found, return false
  }



}
