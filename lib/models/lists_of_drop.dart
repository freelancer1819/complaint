final List<String> compType = [
  'عنوان الشكوي',
  'شكوي انترنت',
  'شكوي غاز',
  'شكوي كهربباء',
  'شكوي مياه',
  'شكوي صرف صحي',
  'غير ذالك'
];
final List<String> goveType = [
  'والجهة المسؤوله',
  'وزترة كهرباء و الطاقه',
  'وزاره الاتصلات',
  'وزارة الشرطه',
  'وزاره النقل',
  'وزاره الصحه',
  'غير ذالك',
];

class Compliant {
  final String name;
  final String time;
  final String date;

  Compliant({
    required this.name,
    required this.time,
    required this.date,
  });
}

List CompliantList = [
  Compliant(
    name:'قطع الكهرباء',
    time: '12 م',
    date: '12/2021',
  ),
  Compliant(
    name:'القمامه',
    time: '1 ص',
    date: '1/2021',
  ),
  Compliant(
    name:  'انقطاع الانترنت',
    time: '3 ص',
    date: '11/2021',
  ),
  Compliant(
    name:  'انقطاع المياه',
    time: '3 م',
    date: '5/2021',
  ),
  Compliant(
    name:'قطع الكهرباء',
    time: '6 م',
    date: '8/2021',
  ),
  Compliant(
    name:  'القمامه',
    time: '12 ص',
    date: '2/2021',
  ),
];
