package com.adobe.utils
{
   public class StringUtil
   {
      
      public function StringUtil()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function beginsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(0,param2.length);
      }
      
      public static function trim(param1:String) : String
      {
         return StringUtil.ltrim(StringUtil.rtrim(param1));
      }
      
      public static function stringsAreEqual(param1:String, param2:String, param3:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || param3)
         {
            §§push(param3);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr003d);
                  }
                  else
                  {
                     addr004d:
                     §§push(param1);
                  }
                  §§goto(addr004e);
               }
               §§goto(addr004d);
            }
            §§goto(addr004c);
         }
         addr003d:
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() == param2);
            if(_loc5_)
            {
               addr004c:
               return §§pop();
            }
         }
         else
         {
            addr004e:
            return §§pop().toUpperCase() == param2.toUpperCase();
         }
         return §§pop();
      }
      
      public static function replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function rtrim(param1:String) : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Number = param1.length;
         §§push(_loc2_);
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() > 0)
               {
                  §§push(param1);
                  if(!(_loc4_ || Boolean(_loc2_)))
                  {
                     break;
                  }
                  §§push(_loc3_);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop() - 1);
                  }
                  if(§§pop().charCodeAt(§§pop()) > 32)
                  {
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§push(param1);
                        break;
                     }
                  }
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc5_ && StringUtil))
                     {
                        addr00a0:
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                     _loc3_ = §§pop();
                     if(_loc5_)
                     {
                        §§goto(addr00b5);
                     }
                     continue loop0;
                  }
                  §§goto(addr00a0);
               }
               addr00b5:
               return "";
            }
            break;
         }
         return §§pop().substring(0,_loc3_);
      }
      
      public static function endsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(param1.length - param2.length);
      }
      
      public static function stringHasValue(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc2_ || Boolean(param1))
               {
                  §§push(!§§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc2_ || StringUtil)
                        {
                           §§pop();
                           addr0066:
                           addr0065:
                           return param1.length > 0;
                        }
                     }
                  }
               }
            }
            §§goto(addr0066);
         }
         §§goto(addr0065);
      }
      
      public static function remove(param1:String, param2:String) : String
      {
         return StringUtil.replace(param1,param2,"");
      }
      
      public static function ltrim(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Number = param1.length;
         var _loc3_:* = 0;
         loop0:
         do
         {
            §§push(_loc3_);
            while(§§pop() < _loc2_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop().charCodeAt(§§pop()) <= 32)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(§§pop() + 1);
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                        }
                        continue loop0;
                     }
                     if(_loc4_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     addr0055:
                     §§push(param1);
                     §§push(_loc3_);
                  }
                  return §§pop().substring(§§pop());
               }
               §§goto(addr0055);
            }
            break;
         }
         while(_loc3_ = §§pop(), !(_loc4_ && Boolean(param1)));
         
         return "";
      }
   }
}

