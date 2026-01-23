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
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(_loc9_)
         {
            super();
            if(_loc9_ || Boolean(param2))
            {
               this.weight = param1;
               if(_loc9_)
               {
                  this.color = param2;
                  if(!_loc10_)
                  {
                     §§goto(addr004f);
                  }
                  §§goto(addr005a);
               }
               §§goto(addr0088);
            }
            §§goto(addr0095);
         }
         addr004f:
         this.alpha = param3;
         if(!_loc10_)
         {
            addr005a:
            this.usePixelHinting = param4;
            if(!_loc10_)
            {
               this.scaleMode = param5;
               if(!(_loc10_ && Boolean(this)))
               {
                  addr0088:
                  this.caps = param6;
                  if(_loc9_)
                  {
                     addr0095:
                     this.joints = param7;
                     if(_loc9_ || Boolean(this))
                     {
                        addr00aa:
                        this.miterLimit = param8;
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr00b1);
            }
            §§goto(addr00aa);
         }
         addr00b1:
      }
      
      public function apply(param1:Graphics) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.lineStyle(this.weight,this.color,this.alpha,this.usePixelHinting,this.scaleMode,this.caps,this.joints,this.miterLimit);
         }
      }
   }
}

