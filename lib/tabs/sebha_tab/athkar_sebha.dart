class AthkarSebha {
  int count=0;
  int index=0;
 List<String> athkar=[
   "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
   "سبحان الله",
   "الحمد لله",
   "الله اكبر",
   " سبحان الله ",
   "لا اله الا الله"
 ];

void clickthkar(){
  count++;
  if(count>30){
    count=0;
    index=(index+1)%athkar.length;
  }
}


String getthkar()=>athkar[index];
 String gettitle(){
  if(count==0&&index==0)return  "سَبِّحِ اسْمَ رَبِّكَ الأعلى";
  int previousIndex = (index == 0) ? athkar.length - 1 : index - 1;
  return athkar[previousIndex];

}

}