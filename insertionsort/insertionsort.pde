float[] values;
int i=1;
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
  if(i<values.length){
     temp=values[i];
     j=i-1;
     while(j>=0 && temp<values[j]){
       values[j+1]=values[j];
       j=j-1;
     }
     values[j+1]=temp;
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
       i=i+1;
  }

void swap(float[] arr,int a,int b){
     float temp = arr[a];
     arr[a]=arr[b];
     arr[b]=temp;
  
}
