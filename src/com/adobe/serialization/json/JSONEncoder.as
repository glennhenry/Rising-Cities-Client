package com.adobe.serialization.json
{
   import flash.utils.describeType;
   
   public class JSONEncoder
   {
      
      private var jsonString:String;
      
      public function JSONEncoder(param1:*)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            super();
            if(_loc2_)
            {
               addr0026:
               this.jsonString = this.convertToString(param1);
            }
            return;
         }
         §§goto(addr0026);
      }
      
      private function escapeString(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(§§pop() < _loc4_)
            {
               §§push(param1);
               if(!_loc9_)
               {
                  §§push(_loc5_);
                  if(_loc10_ || Boolean(this))
                  {
                     §§push(§§pop().charAt(§§pop()));
                     if(_loc10_)
                     {
                        _loc3_ = §§pop();
                        if(!_loc9_)
                        {
                           §§push(_loc3_);
                           loop2:
                           while(true)
                           {
                              var _loc8_:* = §§pop();
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 §§push("\"");
                                 if(_loc10_ || Boolean(_loc2_))
                                 {
                                    §§push(_loc8_);
                                    if(_loc10_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             §§push(0);
                                             if(_loc9_ && Boolean(param1))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr042c:
                                             §§push(6);
                                             if(_loc10_ || Boolean(this))
                                             {
                                             }
                                          }
                                          addr044c:
                                          if(!(_loc9_ && Boolean(this)))
                                          {
                                             loop15:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(_loc2_);
                                                   if(_loc10_ || Boolean(_loc2_))
                                                   {
                                                      §§push("\\\"");
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            addr04b4:
                                                            §§push(§§pop() + _loc2_);
                                                            if(!_loc9_)
                                                            {
                                                               addr04bc:
                                                               §§push(§§pop() + "\"");
                                                            }
                                                         }
                                                         _loc2_ = §§pop();
                                                         if(_loc9_)
                                                         {
                                                         }
                                                         addr047f:
                                                         _loc5_++;
                                                         if(!(_loc10_ || Boolean(_loc3_)))
                                                         {
                                                            break loop1;
                                                         }
                                                         continue loop0;
                                                         break;
                                                         addr04b4:
                                                      }
                                                      addr00a8:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push("\\u");
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc9_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr0287:
                                                                              addr0285:
                                                                              §§push(§§pop() + _loc6_);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc10_ || Boolean(param1))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr029e:
                                                                                       _loc2_ = §§pop();
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          addr02b9:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc10_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr02b8:
                                                                                    }
                                                                                    §§goto(addr047f);
                                                                                 }
                                                                                 addr0297:
                                                                              }
                                                                              §§goto(addr04b4);
                                                                           }
                                                                           addr0288:
                                                                        }
                                                                        §§goto(addr0287);
                                                                     }
                                                                     §§goto(addr0285);
                                                                  }
                                                                  addr0264:
                                                               }
                                                               §§goto(addr02b8);
                                                            }
                                                            addr025d:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr014b:
                                                         _loc2_ = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            break loop1;
                                                         }
                                                      }
                                                      §§goto(addr047f);
                                                   }
                                                   else
                                                   {
                                                      addr01e8:
                                                      §§push(0);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().charCodeAt(§§pop()).toString(16));
                                                         if(!_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               var _temp_48:* = §§pop();
                                                               §§push(_temp_48);
                                                               §§push(_temp_48);
                                                               if(!_loc9_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop().length == 2)
                                                                     {
                                                                        if(_loc10_ || Boolean(_loc2_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push("00");
                                                                              if(_loc9_)
                                                                              {
                                                                                 break loop15;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    if(!(_loc10_ || Boolean(_loc2_)))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr025d);
                                                                                 }
                                                                                 §§goto(addr02b8);
                                                                              }
                                                                           }
                                                                           addr0221:
                                                                        }
                                                                        §§goto(addr047f);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("000");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr0246);
                                                                        }
                                                                     }
                                                                     §§goto(addr04b4);
                                                                  }
                                                               }
                                                               §§goto(addr02b9);
                                                            }
                                                            addr01fb:
                                                         }
                                                      }
                                                      addr01ea:
                                                   }
                                                   §§goto(addr02b8);
                                                case 1:
                                                   §§push(_loc2_);
                                                   if(_loc10_)
                                                   {
                                                      §§push("\\\\");
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr00a8);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0192:
                                                      §§push("\\t");
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc10_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!(_loc10_ || Boolean(_loc2_)))
                                                            {
                                                               §§goto(addr025d);
                                                            }
                                                            §§goto(addr047f);
                                                         }
                                                         §§goto(addr0297);
                                                      }
                                                   }
                                                   §§goto(addr0288);
                                                case 2:
                                                   §§push(_loc2_);
                                                   if(!(_loc9_ && Boolean(_loc2_)))
                                                   {
                                                      §§push("\\b");
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc10_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                            }
                                                            §§goto(addr047f);
                                                         }
                                                         §§goto(addr04b4);
                                                      }
                                                      else
                                                      {
                                                         addr01cf:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!(_loc9_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§goto(addr01e8);
                                                               }
                                                               §§goto(addr0264);
                                                            }
                                                            §§goto(addr0221);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc10_ || Boolean(param1))
                                                            {
                                                               §§goto(addr02b8);
                                                            }
                                                         }
                                                         §§goto(addr02c1);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr00fe:
                                                      §§push("\\f");
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc10_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr014b);
                                                         }
                                                         §§goto(addr047f);
                                                      }
                                                      else
                                                      {
                                                         addr013c:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc10_ || Boolean(_loc2_))
                                                         {
                                                            §§goto(addr014b);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0297);
                                                         }
                                                      }
                                                      §§goto(addr014b);
                                                   }
                                                   §§goto(addr0297);
                                                case 3:
                                                   §§push(_loc2_);
                                                   if(!_loc9_)
                                                   {
                                                      §§goto(addr00fe);
                                                   }
                                                   else
                                                   {
                                                      addr01c6:
                                                      §§push(" ");
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr01cf);
                                                      }
                                                      §§goto(addr0288);
                                                   }
                                                case 4:
                                                   §§push(_loc2_);
                                                   if(!(_loc9_ && Boolean(param1)))
                                                   {
                                                      §§push("\\n");
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr013c);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01cf);
                                                      }
                                                   }
                                                   §§goto(addr020a);
                                                case 5:
                                                   §§push(_loc2_);
                                                   if(!(_loc9_ && Boolean(param1)))
                                                   {
                                                      §§push("\\r");
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         _loc2_ = §§pop();
                                                         if(_loc9_ && Boolean(_loc3_))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0288);
                                                      }
                                                      §§goto(addr047f);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr01fb);
                                                   }
                                                case 6:
                                                   §§push(_loc2_);
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr0192);
                                                   }
                                                   §§goto(addr0264);
                                                default:
                                                   §§push(_loc3_);
                                                   if(_loc10_ || Boolean(_loc3_))
                                                   {
                                                      §§goto(addr01c6);
                                                   }
                                                   §§goto(addr0264);
                                             }
                                             return §§pop();
                                          }
                                          break;
                                       }
                                       §§push("\\");
                                       if(!(_loc9_ && Boolean(_loc2_)))
                                       {
                                          §§push(_loc8_);
                                          if(_loc10_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(1);
                                                   if(_loc9_ && Boolean(this))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr040e:
                                                   §§push(5);
                                                   if(_loc9_ && Boolean(_loc2_))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("\b");
                                                if(!(_loc9_ && Boolean(this)))
                                                {
                                                   addr035d:
                                                   §§push(_loc8_);
                                                   if(!_loc9_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc9_ && Boolean(param1)))
                                                         {
                                                            §§push(2);
                                                            if(_loc9_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr03de:
                                                            §§push(4);
                                                            if(_loc10_ || Boolean(_loc3_))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("\f");
                                                         if(_loc10_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc10_ || Boolean(this))
                                                            {
                                                               addr039d:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     addr03a7:
                                                                     §§push(3);
                                                                     if(_loc10_ || Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr042c);
                                                                  }
                                                                  §§goto(addr044c);
                                                               }
                                                               else
                                                               {
                                                                  §§push("\n");
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr03cc:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc9_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§goto(addr03de);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr040e);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("\r");
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr03fc:
                                                                              §§push(_loc8_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr0404:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr040e);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr042c);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0428:
                                                                                    addr0426:
                                                                                    if("\t" === _loc8_)
                                                                                    {
                                                                                       §§goto(addr042c);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(7);
                                                                                    }
                                                                                    §§goto(addr044c);
                                                                                 }
                                                                                 §§goto(addr042c);
                                                                              }
                                                                              §§goto(addr0428);
                                                                           }
                                                                           §§goto(addr0426);
                                                                        }
                                                                        §§goto(addr044c);
                                                                     }
                                                                     §§goto(addr0428);
                                                                  }
                                                                  §§goto(addr03fc);
                                                               }
                                                            }
                                                            §§goto(addr0404);
                                                         }
                                                         §§goto(addr03fc);
                                                      }
                                                      §§goto(addr044c);
                                                   }
                                                   §§goto(addr039d);
                                                }
                                                §§goto(addr0426);
                                             }
                                             §§goto(addr044c);
                                          }
                                          §§goto(addr03cc);
                                       }
                                       §§goto(addr03fc);
                                       §§goto(addr042c);
                                    }
                                    §§goto(addr0428);
                                 }
                                 §§goto(addr035d);
                              }
                              §§goto(addr03a7);
                           }
                           continue;
                        }
                        §§goto(addr047f);
                     }
                     §§goto(addr029e);
                  }
                  §§goto(addr01ea);
               }
               §§goto(addr020a);
            }
            break;
         }
         §§push("\"");
         if(!(_loc9_ && Boolean(this)))
         {
            §§goto(addr04b4);
         }
         §§goto(addr04bc);
      }
      
      private function arrayToString(param1:Array) : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(§§pop().length > 0)
               {
                  if(!(_loc4_ || Boolean(_loc3_)))
                  {
                     continue;
                  }
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + ",");
                     if(_loc5_ && Boolean(_loc3_))
                     {
                        §§push(§§pop() + _loc2_);
                        if(_loc4_)
                        {
                           addr00c1:
                           §§push(§§pop() + "]");
                        }
                     }
                     _loc2_ = §§pop();
                     if(_loc5_ && Boolean(param1))
                     {
                        break;
                     }
                     addr0073:
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        addr007a:
                        §§push(§§pop() + this.convertToString(param1[_loc3_]));
                     }
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        _loc3_++;
                        if(_loc5_ && Boolean(_loc2_))
                        {
                           break;
                        }
                     }
                     continue;
                     return §§pop();
                     addr00b9:
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0073);
            }
            §§goto(addr007a);
         }
         §§push("[");
         if(_loc4_)
         {
            §§goto(addr00b9);
         }
         §§goto(addr00c1);
      }
      
      public function getString() : String
      {
         return this.jsonString;
      }
      
      private function objectToString(param1:Object) : String
      {
         var value:Object;
         var s:String;
         var classInfo:XML;
         var key:String;
         var v:XML;
         var o:Object;
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc11_ || Boolean(param1))
         {
            §§push(null);
            if(!_loc10_)
            {
               §§pop().§§slot[4] = §§pop();
               if(_loc11_ || _loc2_)
               {
                  §§push(§§newactivation());
                  if(!_loc10_)
                  {
                     §§push(null);
                     if(_loc11_ || _loc3_)
                     {
                        §§pop().§§slot[5] = §§pop();
                        if(_loc11_)
                        {
                           §§push(§§newactivation());
                           if(!_loc10_)
                           {
                              addr006c:
                              §§pop().§§slot[6] = null;
                              addr006b:
                              if(!_loc10_)
                              {
                                 addr0077:
                                 §§push(§§newactivation());
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    addr0087:
                                    §§pop().§§slot[1] = param1;
                                    if(!_loc10_)
                                    {
                                       addr0090:
                                       §§push(§§newactivation());
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr00a0:
                                          §§pop().§§slot[2] = "";
                                          if(_loc11_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc11_)
                                             {
                                                §§pop().§§slot[3] = describeType(o);
                                                if(!_loc10_)
                                                {
                                                   addr00cc:
                                                   addr00ca:
                                                   if(classInfo.@name.toString() == "Object")
                                                   {
                                                      addr00dc:
                                                      var _loc3_:int = 0;
                                                      var _loc4_:* = o;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc4_,_loc3_));
                                                         if(!_loc11_)
                                                         {
                                                            loop13:
                                                            while(§§pop())
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc10_ && Boolean(_loc3_)))
                                                               {
                                                                  §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        §§push(Boolean(§§pop().§§slot[6].metadata));
                                                                        if(!(_loc10_ && Boolean(param1)))
                                                                        {
                                                                           var _temp_22:* = §§pop();
                                                                           §§push(_temp_22);
                                                                           if(_temp_22)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc11_ || Boolean(param1))
                                                                                 {
                                                                                    addr03bb:
                                                                                    var _loc6_:int = 0;
                                                                                    var _loc7_:* = §§checkfilter(v.metadata);
                                                                                    var _loc5_:* = new XMLList("");
                                                                                    if(_loc11_ || Boolean(_loc3_))
                                                                                    {
                                                                                    }
                                                                                    v.metadata.(if(!_loc10_)
                                                                                    {
                                                                                       if(@name != "Transient")
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                    },_loc5_[_loc6_] = _loc8_,false);
                                                                                    addr0430:
                                                                                    if(_loc5_.length() > 0)
                                                                                    {
                                                                                       if(!(_loc11_ || _loc2_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[2]);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(",");
                                                                                                         if(_loc11_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc10_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§pop().§§slot[2] = §§pop();
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr04a0:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr04a2:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.escapeString(§§pop().§§slot[6].@name.toString()) + ":");
                                                                                                                                 if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + this.convertToString(§§pop().§§slot[1][§§pop().§§slot[6].@name]));
                                                                                                                                 }
                                                                                                                                 addr04ee:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr04ef:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr04aa:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§§slot[2] = §§pop();
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr049e:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc4_,_loc3_));
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               break loop13;
                                                                                                               addr04f2:
                                                                                                            }
                                                                                                            §§goto(addr04ef);
                                                                                                         }
                                                                                                         §§goto(addr04ee);
                                                                                                      }
                                                                                                      §§goto(addr04aa);
                                                                                                   }
                                                                                                   §§goto(addr04a2);
                                                                                                }
                                                                                                addr0466:
                                                                                             }
                                                                                             §§goto(addr04a0);
                                                                                          }
                                                                                          addr045e:
                                                                                       }
                                                                                       §§goto(addr04f2);
                                                                                    }
                                                                                    else if(_loc11_)
                                                                                    {
                                                                                       addr044e:
                                                                                       if(§§pop().§§slot[2].length > 0)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§goto(addr045e);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr049e);
                                                                                    }
                                                                                    §§goto(addr0466);
                                                                                 }
                                                                                 §§goto(addr049e);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr0430);
                                                                     }
                                                                     §§goto(addr044e);
                                                                  }
                                                                  §§goto(addr03bb);
                                                               }
                                                               §§goto(addr04a0);
                                                            }
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  if(_loc11_ || Boolean(this))
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr04fb:
                                                               }
                                                               §§push("{");
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop() + s);
                                                                  if(!_loc10_)
                                                                  {
                                                                     return §§pop() + "}";
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§push(§§newactivation());
                                                         if(!(_loc10_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(§§nextname(_loc3_,_loc4_));
                                                            if(_loc11_ || Boolean(_loc3_))
                                                            {
                                                               §§pop().§§slot[5] = §§pop();
                                                               if(!(_loc10_ && Boolean(this)))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc10_ && Boolean(this)))
                                                                     {
                                                                        §§pop().§§slot[4] = §§pop().§§slot[1][key];
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr0159:
                                                                              if(§§pop().§§slot[4] is Function)
                                                                              {
                                                                                 if(_loc11_ || Boolean(this))
                                                                                 {
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(§§pop().§§slot[2].length > 0)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr018c:
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(!(_loc10_ && Boolean(param1)))
                                                                                          {
                                                                                             addr01a4:
                                                                                             §§push(§§pop().§§slot[2]);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr01ac:
                                                                                                §§push(",");
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc11_ || Boolean(this))
                                                                                                   {
                                                                                                      §§pop().§§slot[2] = §§pop();
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr01d0:
                                                                                                         addr01ce:
                                                                                                         addr01cc:
                                                                                                         §§push(§§newactivation());
                                                                                                         §§push(s);
                                                                                                         if(!(_loc10_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0206:
                                                                                                            addr01e0:
                                                                                                            §§push(this.escapeString(key) + ":");
                                                                                                            if(!(_loc10_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr01fb:
                                                                                                               §§push(§§pop() + this.convertToString(value));
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§pop().§§slot[2] = §§pop();
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr0206);
                                                                                                }
                                                                                                §§goto(addr01fb);
                                                                                             }
                                                                                             §§goto(addr01e0);
                                                                                          }
                                                                                          §§goto(addr01d0);
                                                                                       }
                                                                                       §§goto(addr01ce);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01cc);
                                                                              }
                                                                           }
                                                                           §§goto(addr01ce);
                                                                        }
                                                                        §§goto(addr018c);
                                                                     }
                                                                     §§goto(addr01a4);
                                                                  }
                                                                  §§goto(addr0159);
                                                               }
                                                               §§goto(addr018c);
                                                            }
                                                            §§goto(addr01ac);
                                                         }
                                                         §§goto(addr0159);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc3_ = 0;
                                                      if(!(_loc10_ && Boolean(param1)))
                                                      {
                                                         _loc6_ = 0;
                                                         _loc7_ = §§checkfilter(classInfo..*);
                                                         _loc5_ = new XMLList("");
                                                         if(_loc11_ || Boolean(this))
                                                         {
                                                         }
                                                         classInfo..*.(if(_loc11_)
                                                         {
                                                            §§push(name() == "variable");
                                                            if(_loc11_)
                                                            {
                                                               _temp_35 = §§pop();
                                                               §§push(_temp_35);
                                                               §§push(_temp_35);
                                                               if(_loc11_ || Boolean(param1))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           §§push(name() == "accessor");
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr02e6:
                                                                              _temp_39 = §§pop();
                                                                              addr02e7:
                                                                              §§push(_temp_39);
                                                                              if(_temp_39)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr02f1:
                                                                                    §§pop();
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr02f8:
                                                                                    §§push(attribute("access").charAt(0) == "r");
                                                                                 }
                                                                              }
                                                                              addr0310:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc11_ || Boolean(_loc3_))
                                                                                 {
                                                                                    _loc5_[_loc6_] = _loc8_;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr02f1);
                                                                        }
                                                                        §§goto(addr02f8);
                                                                     }
                                                                     §§goto(addr02e6);
                                                                  }
                                                                  §§goto(addr0310);
                                                               }
                                                               §§goto(addr02e7);
                                                            }
                                                            §§goto(addr02f1);
                                                         },§§goto(addr02f8),false);
                                                         _loc4_ = _loc5_;
                                                         if(_loc11_ || Boolean(this))
                                                         {
                                                            §§goto(addr04f2);
                                                         }
                                                         §§goto(addr045e);
                                                      }
                                                   }
                                                   §§goto(addr04fb);
                                                }
                                                §§goto(addr00dc);
                                             }
                                             §§goto(addr00cc);
                                          }
                                          §§goto(addr00ca);
                                       }
                                       §§goto(addr00cc);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr0090);
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0077);
            }
            §§goto(addr006c);
         }
         §§goto(addr00a0);
      }
      
      private function convertToString(param1:*) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1 is String);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     §§push(this.escapeString(param1 as String));
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr0090);
                  }
               }
               else
               {
                  §§push(param1 is Number);
                  if(_loc2_ || param1)
                  {
                     addr0058:
                     if(§§pop())
                     {
                        if(isFinite(param1 as Number))
                        {
                           if(_loc2_)
                           {
                              §§push(param1.toString());
                              if(!_loc3_)
                              {
                                 §§goto(addr0090);
                              }
                           }
                           else
                           {
                              addr013e:
                              §§push(param1 is Object);
                              if(!_loc3_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 if(_temp_4)
                                 {
                                    if(_loc2_)
                                    {
                                       addr015d:
                                       §§pop();
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr0174:
                                          §§push(param1 == null);
                                          if(!_loc3_)
                                          {
                                             addr0173:
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                addr0184:
                                                return this.objectToString(param1);
                                                addr017d:
                                             }
                                          }
                                          addr0188:
                                          return "null";
                                          addr0185:
                                       }
                                       §§goto(addr017d);
                                    }
                                 }
                                 §§goto(addr0174);
                              }
                              §§goto(addr015d);
                           }
                           §§goto(addr0184);
                        }
                        else
                        {
                           §§push("null");
                           if(_loc2_ || _loc2_)
                           {
                              addr0090:
                              return §§pop();
                           }
                        }
                        §§goto(addr0188);
                     }
                     else
                     {
                        §§push(param1 is Boolean);
                        if(_loc2_ || Boolean(this))
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 if(param1)
                                 {
                                    if(_loc2_)
                                    {
                                       §§push("true");
                                       if(_loc3_ && _loc2_)
                                       {
                                       }
                                       §§goto(addr00f5);
                                    }
                                    else
                                    {
                                       §§goto(addr0185);
                                    }
                                 }
                                 else
                                 {
                                    §§push("false");
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00f5:
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr0188);
                              }
                              else
                              {
                                 §§goto(addr017d);
                              }
                           }
                           else
                           {
                              §§push(param1 is Array);
                              if(!_loc3_)
                              {
                                 addr0108:
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(this.arrayToString(param1 as Array));
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr017d);
                                    }
                                    §§goto(addr0184);
                                 }
                                 else
                                 {
                                    §§goto(addr013e);
                                 }
                              }
                              §§goto(addr0173);
                           }
                           §§goto(addr0185);
                        }
                     }
                     §§goto(addr0174);
                  }
                  §§goto(addr0108);
               }
               §§goto(addr017d);
            }
            §§goto(addr0058);
         }
         §§goto(addr017d);
      }
   }
}

