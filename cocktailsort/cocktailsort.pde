float[] values;
int i=0;
int j=0;
int temp;
void setup(){
   fullScreen();
   //size(1920,500);
   values = new float[width];
   for(int i=0;i<values.length;i++){
        values[i]=random(height);
        //values[i]=noise(i/100.0)*(height);
        //values[i]=noise(i/50)*height;
   }
   //values=sort(values);
 }

void draw(){
  background(0);
  float temp;
  int l=values.length;
  int s=0;
  int e=l-1;
  int b=1;
  if(b==1){
  b=0;
  for(int i=s;i<e;i++){
  if(values[i]>values[i+1]){
     temp=values[i];
     values[i]=values[i+1];
     values[i+1]=temp;
     b=1;}
  }
  //if(b==0){
    //break;}
  b=0;
  e=e-1;
  for(int i=e-1;i>s-1;i--){
  if(values[i]>values[i+1]){
     temp=values[i];
     values[i]=values[i+1];
     values[i+1]=temp;
     b=1;}
  }
  s=s+1;
  }else {
          println("finshed");
          noLoop();
    }

  for(int i=0;i<values.length;i++){
       int h=i;
       int k=height;
       if(i<=640){
       stroke(0,160,255);
       line(h,k,i,height-values[i]);}
       if(i<1280 && i>640){
         stroke(255);
         line(h,k,i,height-values[i]);}
       if(i>=1280){
         stroke(255,215,0);
         line(h,k,i,height-values[i]);}
       }
  }

void swap(float[] arr,int a,int b){
     float temp = arr[a];
     arr[a]=arr[b];
     arr[b]=temp;
  
}
