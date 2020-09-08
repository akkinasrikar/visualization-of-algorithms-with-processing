float[] values;
int i=0;
int j=0;
int temp;
void setup(){
   fullScreen();
   //size(1920,500);
   values = new float[width];
   for(int i=0;i<values.length;i++){
        //values[i]=random(height);
        values[i]=noise(i/100.0)*(height);
        //values[i]=noise(i/50)*height;
   }
   //values=sort(values);
 }

void draw(){
  background(0);
  float temp;
  if(i<values.length){
    int t=i;
   for(int j=i+1;j<values.length;j++){
     if(values[t]>values[j]){
       t=j;
     }
   }  
   temp=values[t];
   values[t]=values[i];
   values[i]=temp;
  }else {
          println("finshed");
          noLoop();
    }

  for(int i=0;i<values.length;i++){
       int h=height;
       int k=i;
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
