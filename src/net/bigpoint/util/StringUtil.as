package net.bigpoint.util
{
   public class StringUtil
   {
      
      public function StringUtil()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function makeDate(param1:Number) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 < 60 * 60)
            {
            }
         }
         return "blas";
      }
      
      public static function ucfirst(param1:String) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = "";
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§push(param1);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + §§pop().charAt(§§pop()).toUpperCase());
                     if(_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              §§goto(addr0099);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr0098);
                     }
                     addr0099:
                     §§goto(addr0081);
                  }
                  addr0081:
                  §§goto(addr007f);
               }
               addr007f:
               §§push(§§pop() + param1.substr(1,param1.length));
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0097:
                  _loc2_ = §§pop();
                  addr0098:
                  return _loc2_;
               }
            }
            §§goto(addr0099);
         }
         §§goto(addr0098);
      }
      
      public static function stripHTML(param1:String) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0039);
                  }
               }
               §§goto(addr004c);
            }
            addr0039:
            return param1.replace(/<.*?>/g,"");
         }
         addr004c:
         return "";
      }
      
      public static function replaceInString(param1:String, param2:String, param3:String) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:* = "";
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            §§push(param1);
            if(_loc7_ || Boolean(param3))
            {
               if(§§pop().charAt(_loc5_) == param2)
               {
                  if(_loc7_)
                  {
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        addr004b:
                        §§push(param3);
                        if(!(_loc6_ && Boolean(param3)))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              addr008c:
                              addr008b:
                              §§push(§§pop() + param1.charAt(_loc5_));
                              if(_loc6_ && Boolean(param3))
                              {
                                 §§goto(addr00d3);
                              }
                              _loc4_ = §§pop();
                              if(!(_loc7_ || Boolean(param1)))
                              {
                                 break;
                              }
                              addr00c0:
                              _loc5_++;
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue;
                              addr00d3:
                           }
                           addr006f:
                           _loc4_ = §§pop();
                           if(!(_loc7_ || StringUtil))
                           {
                              continue;
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr006f);
                  }
                  §§goto(addr00c0);
               }
               else
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     §§goto(addr008b);
                  }
               }
               addr00d3:
               return §§pop();
            }
            §§goto(addr004b);
         }
         §§goto(addr00d3);
         §§push(_loc4_);
      }
   }
}

