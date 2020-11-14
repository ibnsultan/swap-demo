hifadhi x=dai("namba za wanafunzi: "); #requesting the number of students to be recorded
hifadhi jina=[]; #array ya kuhifadhi majina (array to store names)

#IDADI YA MASOMO - (number of subjects the below are arrays)
hifadhi math=[];
hifadhi eng=[];
hifadhi sst=[];
hifadhi kis=[];
hifadhi sci=[];

#MUUNDO WA KUHIFADHI NA KUWASILISHA MAKSI
hakika(hifadhi i=0; i<x; hifadhi i=i+1){ #marudio maalumu (for loop)
	hifadhi kauta=i+1;
	hifadhi jina[i]=dai("weka jina la " + kauta + ": ");
	andika "maksi kwa ajili ya: "+jina[i];
	hifadhi math[i]=dai("hisabati :     ");
	hifadhi eng[i]=dai("kiengereza:    ");
	hifadhi sst[i]=dai("stadi za kazi: ");
	hifadhi kis[i]=dai("kiswahili:     ");
	hifadhi sci[i]=dai("sayansi:       ");
	andika "";
}

hakika(hifadhi i=0; i<x; hifadhi i=i+1){
	hifadhi kauta=i+1;

#JUMLA NA ASILIMIA	
	hifadhi total=math[i]+eng[i]+sst[i]+kis[i]+sci[i];
	hifadhi ave=(math[i]+eng[i]+sst[i]+kis[i]+sci[i])/5;

#KUPAngiLIA MADARAJA (determinining grades using nested if else)
	kama(ave==0 && ave<10){
		hifadhi grade="F";
	}basi kama(ave>=10 && ave<20){
		hifadhi grade="D";
	}basi kama(ave>=20 && ave<30){
		hifadhi grade="C";
	}basi kama(ave>=30 && ave<40){
		hifadhi grade="B";
	}basi{
		hifadhi grade="A";
	}

#MATOKEO YA MWISHO (outputting the results)
	andika kauta+" - "+BADILI(jina[i]);
	andika "math="+math[i] + " english="+eng[i]+ " social="+sst[i]+ " swahili="+kis[i]+ " science="+sci[i] + " total="+total + " average="+ave + " Grade="+grade;
	andika "";
}

