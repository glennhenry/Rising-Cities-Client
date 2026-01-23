package net.bigpoint.particles
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class Particle extends Bitmap
   {
      
      public var vX:Number = 0;
      
      public var vY:Number = 0;
      
      public var birthTime:int;
      
      public var lifeTime:int;
      
      public var active:Boolean = false;
      
      public var emitter:ParticleEmitter;
      
      public function Particle(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

