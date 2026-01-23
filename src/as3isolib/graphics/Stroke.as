package as3isolib.graphics
{
   import flash.display.Graphics;
   
   public class Stroke implements IStroke
   {
      
      public var weight:Number;
      
      public var color:uint;
      
      public var alpha:Number;
      
      public var usePixelHinting:Boolean;
      
      public var scaleMode:String;
      
      public var caps:String;
      
      public var joints:String;
      
      public var miterLimit:Number;
      
      public function Stroke(param1:Number, param2:uint, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 0)
      {
         super();
         this.weight = param1;
         this.color = param2;
         this.alpha = param3;
         this.usePixelHinting = param4;
         this.scaleMode = param5;
         this.caps = param6;
         this.joints = param7;
         this.miterLimit = param8;
      }
      
      public function apply(param1:Graphics) : void
      {
         param1.lineStyle(this.weight,this.color,this.alpha,this.usePixelHinting,this.scaleMode,this.caps,this.joints,this.miterLimit);
      }
   }
}

