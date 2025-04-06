// patient.dart

// Helper class to update fields like time, dosage, taken
class ChangeField {
  void change(Map<String, List<dynamic>> medications, String medication, String field, dynamic newValue) {
    if (!medications.containsKey(medication)) {
      print("Medication not found: $medication");
      return;
    }

    switch (field.toLowerCase()) {
      case 'time':
        medications[medication]![0] = newValue;
        break;
      case 'taken':
        medications[medication]![1] = newValue;
        break;
      case 'dosage':
        medications[medication]![2] = newValue;
        break;
      default:
        print("Invalid field: $field. Use 'time', 'taken', or 'dosage'.");
    }
  }
}

// Main class representing a patient and their medications
class Patient {
  Map<String, List<dynamic>> medications = {}; // [time, taken, dosage]

  String name;
  String age;
  String gender;
  int dosage;

  Patient({
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

  // Add medication with all fields
  void addMedication(String medication, String time, bool taken, int dosage) {
    medications[medication] = [time, taken, dosage];
  }

  // Remove medication
  void removeMedication(String medication) {
    medications.remove(medication);
  }

  // Check if a medication has been taken
  bool hasTakenMedication(String medication) {
    return medications[medication]?[1] ?? false;
  }

  // Get the time for a medication
  String getMedicationTime(String medication) {
    return medications[medication]?[0] ?? "Medication not found";
  }

  // Change a specific field using ChangeField helper
  void changeMedication(String medication, String field, dynamic newValue) {
    ChangeField changer = ChangeField();
    changer.change(medications, medication, field, newValue);
  }

  // General-purpose getter for any field
  dynamic getMedicationField(String medication, String field) {
    if (!medications.containsKey(medication)) {
      return "Medication not found";
    }

    switch (field.toLowerCase()) {
      case 'time':
        return medications[medication]![0];
      case 'taken':
        return medications[medication]![1];
      case 'dosage':
        return medications[medication]![2];
      default:
        return "Invalid field: $field";
    }
  }

  // Wrapper to get dosage directly
  int? getMedicationDosage(String medication) {
    var result = getMedicationField(medication, 'dosage');
    return result is int ? result : null;
  }
}