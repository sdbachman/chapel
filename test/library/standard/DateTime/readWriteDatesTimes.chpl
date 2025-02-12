use Time, IO;

proc testReadWrite(dt) {
  var dt2: dt.type;
  var mem = openMemFile();
  var writer = mem.writer();
  writer.writef("%jt", dt);
  var reader = mem.reader();

  reader.readf("%jt", dt2);

  writeln(dt.type:string, ": ", dt == dt2);
}

var dt = dateTime.now();
testReadWrite(dt);
testReadWrite(dt.getDate());
testReadWrite(dt.getTime());
