class person {
  var name;
  var occupation;
}

void main() {
  //attributes of a class can be assigned different values
  //like here! by creating a new object using it.
  var p1 = person();
  p1.name = "Nwaozor Vivian";
  p1.occupation = "Software Developer";

  var p2 = person();
  p2.name = "Nwaozor Vivian";
  p2.occupation = "an Intern at Hotels.NG";

  print("${p1.name} is a ${p1.occupation}");
  print("${p2.name} is a ${p2.occupation}");
}
