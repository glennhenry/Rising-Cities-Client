package as3isolib.graphics
{
   import flash.display.Graphics;
   
   public class SolidColorFill implements IFill
   {
      
      private static var _IDCount:uint = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _IDCount = 0;
      }
      
      public const UID:uint;
      
      protected var setID:String;
      
      public var color:uint;
      
      public var alpha:Number;
      
      public function SolidColorFill(param1:uint, param2:Number)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_)
         {
            §§push(this);
            var _loc3_:*;
            §§push(Number((_loc3_ = §§findproperty(_IDCount))._IDCount));
            if(_loc5_ || Boolean(this))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc5_)
               {
                  _loc3_._IDCount = _loc4_;
               }
            }
            §§pop().UID = §§pop();
            if(!_loc6_)
            {
               super();
               if(!_loc6_)
               {
                  this.color = param1;
                  if(!(_loc6_ && _loc3_))
                  {
                     addr0089:
                     this.alpha = param2;
                  }
               }
               return;
            }
         }
         §§goto(addr0089);
      }
      
      public function get id() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.setID);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() == null);
               if(_loc2_ || Boolean(this))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(this.setID);
                           if(_loc2_ || Boolean(this))
                           {
                              addr0076:
                              addr0069:
                              if(§§pop() == "")
                              {
                                 addr007a:
                                 §§push("SolidColorFill");
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§push(§§pop() + this.UID.toString());
                                 }
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(this.setID);
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr007a);
                     }
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0069);
         }
         §§goto(addr007a);
      }
      
      public function set id(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.setID = param1;
         }
      }
      
      public function begin(param1:Graphics) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            param1.beginFill(this.color,this.alpha);
         }
      }
      
      public function end(param1:Graphics) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.endFill();
         }
      }
      
      public function clone() : IFill
      {
         return new SolidColorFill(this.color,this.alpha);
      }
   }
}

