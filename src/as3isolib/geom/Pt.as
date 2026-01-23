package as3isolib.geom
{
   import flash.geom.Point;
   
   public class Pt extends Point
   {
      
      public var z:Number = 0;
      
      public function Pt(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super();
            if(_loc5_ || Boolean(param2))
            {
               this.x = param1;
               if(_loc5_ || Boolean(param2))
               {
                  this.y = param2;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0065:
                     this.z = param3;
                  }
               }
               §§goto(addr006a);
            }
            §§goto(addr0065);
         }
         addr006a:
      }
      
      public static function distance(param1:Pt, param2:Pt) : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §§push(param2.x - param1.x);
         if(_loc6_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param2.y - param1.y);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(param2.z);
         if(_loc6_ || Boolean(param1))
         {
            §§push(§§pop() - param1.z);
            if(_loc6_ || Boolean(param2))
            {
               §§push(§§pop());
            }
         }
         var _loc5_:* = §§pop();
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public static function theta(param1:Pt, param2:Pt) : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §§push(param2.x - param1.x);
         if(_loc6_ || Boolean(param2))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param2.y - param1.y);
         if(!(_loc7_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = Math.atan(_loc4_ / _loc3_);
         if(_loc6_)
         {
            §§push(_loc3_);
            if(!(_loc7_ && Boolean(param1)))
            {
               §§push(0);
               if(_loc6_ || Pt)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && Pt))
                        {
                           §§push(§§pop() + Math.PI);
                           if(_loc6_ || Pt)
                           {
                              _loc5_ = §§pop();
                              if(_loc6_)
                              {
                                 addr00b7:
                                 §§push(_loc3_);
                                 if(_loc6_)
                                 {
                                    §§push(0);
                                    if(_loc6_)
                                    {
                                       addr00c6:
                                       §§push(§§pop() >= §§pop());
                                       if(!(_loc7_ && Pt))
                                       {
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          if(_temp_8)
                                          {
                                             if(_loc6_ || Boolean(param2))
                                             {
                                                §§pop();
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr00f7:
                                                   §§push(_loc4_);
                                                   if(_loc6_)
                                                   {
                                                      addr0111:
                                                      addr0101:
                                                      addr00ff:
                                                      if(§§pop() < 0)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr011b);
                                                         }
                                                      }
                                                      §§goto(addr0143);
                                                   }
                                                   §§goto(addr0123);
                                                }
                                                §§goto(addr011b);
                                             }
                                          }
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0101);
                                 }
                                 §§goto(addr0123);
                              }
                              addr011b:
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 addr0123:
                                 §§push(§§pop() + Math.PI * 2);
                                 if(_loc6_)
                                 {
                                    §§goto(addr0132);
                                 }
                                 §§goto(addr0141);
                              }
                              §§goto(addr0132);
                           }
                           §§goto(addr00ff);
                        }
                        §§goto(addr0132);
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00c6);
            }
            addr0132:
            §§push(§§pop());
            if(!(_loc7_ && Boolean(param1)))
            {
               addr0141:
               _loc5_ = §§pop();
               addr0143:
               return _loc5_;
            }
         }
         §§goto(addr011b);
      }
      
      public static function angle(param1:Pt, param2:Pt) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(theta(param1,param2));
         if(_loc4_)
         {
            §§push(§§pop() * 180);
            if(_loc4_ || _loc3_)
            {
               addr0042:
               return §§pop() / Math.PI;
            }
         }
         §§goto(addr0042);
      }
      
      public static function polar(param1:Pt, param2:Number, param3:Number = 0) : Pt
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:Number = param1.x + Math.cos(param3) * param2;
         var _loc5_:Number = param1.y + Math.sin(param3) * param2;
         §§push(param1.z);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         return new Pt(_loc4_,_loc5_,_loc6_);
      }
      
      public static function interpolate(param1:Pt, param2:Pt, param3:Number) : Pt
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(_loc8_)
         {
            §§push(param3);
            if(_loc8_)
            {
               §§push(0);
               if(_loc8_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(_loc8_ || Boolean(param3))
                     {
                        return param1;
                     }
                     addr0062:
                     §§push(param2.x - param1.x);
                     if(_loc8_ || Boolean(param2))
                     {
                        addr0077:
                        §§push(§§pop() * param3);
                        if(!_loc7_)
                        {
                           addr008c:
                           §§push(§§pop() + param1.x);
                        }
                        var _loc4_:* = §§pop();
                        §§push(param2.y - param1.y);
                        if(_loc8_)
                        {
                           §§push(§§pop() * param3);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + param1.y);
                           }
                        }
                        var _loc5_:* = §§pop();
                        §§push(param2.z);
                        if(_loc8_ || Boolean(param3))
                        {
                           §§push(param1.z);
                           if(_loc8_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc8_ || Boolean(param1))
                              {
                                 §§push(param3);
                                 if(_loc8_ || Boolean(param2))
                                 {
                                    §§goto(addr00f7);
                                 }
                                 §§goto(addr0102);
                              }
                              §§goto(addr0111);
                           }
                           addr00f7:
                           §§push(§§pop() * §§pop());
                           if(_loc8_)
                           {
                              addr0102:
                              addr00fe:
                              §§push(§§pop() + param1.z);
                              if(_loc8_ || Boolean(param3))
                              {
                                 addr0111:
                                 §§push(§§pop());
                              }
                           }
                           var _loc6_:* = §§pop();
                           return new Pt(_loc4_,_loc5_,_loc6_);
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr008c);
                  }
                  else
                  {
                     §§push(param3);
                     if(_loc8_ || Boolean(param2))
                     {
                        addr0056:
                        addr0054:
                        if(§§pop() >= 1)
                        {
                           if(_loc8_)
                           {
                              §§goto(addr0060);
                           }
                        }
                        §§goto(addr0062);
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0056);
            }
            §§goto(addr0054);
         }
         addr0060:
         return param2;
      }
      
      override public function get length() : Number
      {
         return Math.sqrt(x * x + y * y + this.z * this.z);
      }
      
      override public function clone() : Point
      {
         return new Pt(x,y,this.z);
      }
      
      override public function toString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push("x:");
         if(_loc1_)
         {
            §§push(§§pop() + x);
            if(!(_loc2_ && _loc1_))
            {
               §§push(" y:");
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() + §§pop());
                  if(_loc1_ || Boolean(this))
                  {
                     addr005c:
                     §§push(§§pop() + y);
                     if(_loc1_)
                     {
                        §§goto(addr0073);
                     }
                     §§goto(addr006e);
                  }
                  addr0073:
                  §§goto(addr0068);
               }
               addr0068:
               §§push(§§pop() + " z:");
               if(_loc1_)
               {
                  addr006e:
                  return §§pop() + this.z;
               }
            }
         }
         §§goto(addr005c);
      }
   }
}

