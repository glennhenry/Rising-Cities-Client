package net.bigpoint.eventstream
{
   import flash.utils.ByteArray;
   
   public class Base64
   {
      
      private static const BASE64_CHARS:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         BASE64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         if(_loc2_)
         {
            version = "1.1.0";
         }
      }
      
      public function Base64()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
         throw new Error("Base64 class is static container only");
      }
      
      public static function encode(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ByteArray = new ByteArray();
         if(_loc4_ || Boolean(param1))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return encodeByteArray(_loc2_);
      }
      
      public static function encodeByteArray(param1:ByteArray) : String
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:* = "";
         var _loc4_:Array = new Array(4);
         if(_loc8_)
         {
            param1.position = 0;
         }
         loop0:
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = new Array();
            if(!_loc9_)
            {
               §§push(0);
               if(_loc8_ || Boolean(_loc3_))
               {
                  §§push(§§pop());
                  if(_loc8_ || Boolean(param1))
                  {
                     _loc5_ = §§pop();
                     if(!_loc9_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc9_ && Boolean(_loc3_))
                           {
                              break;
                           }
                           loop9:
                           while(true)
                           {
                              §§push(3);
                              if(_loc9_ && Boolean(_loc2_))
                              {
                                 break;
                              }
                              §§push(§§pop() < §§pop());
                              if(_loc8_)
                              {
                                 var _temp_15:* = §§pop();
                                 §§push(_temp_15);
                                 if(_temp_15)
                                 {
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       addr0100:
                                       §§pop();
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          addr0116:
                                          if(param1.bytesAvailable <= 0)
                                          {
                                             if(_loc8_ || Base64)
                                             {
                                                _loc4_[0] = (_loc3_[0] & 0xFC) >> 2;
                                                if(!(_loc9_ && Base64))
                                                {
                                                   _loc4_[1] = (_loc3_[0] & 3) << 4 | _loc3_[1] >> 4;
                                                   if(_loc8_ || Boolean(_loc3_))
                                                   {
                                                      _loc4_[2] = (_loc3_[1] & 0x0F) << 2 | _loc3_[2] >> 6;
                                                      if(_loc8_)
                                                      {
                                                         _loc4_[3] = _loc3_[2] & 0x3F;
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc3_.length);
                                                            if(_loc8_)
                                                            {
                                                               addr01c5:
                                                               _loc6_ = §§pop();
                                                               if(!(_loc9_ && Boolean(_loc3_)))
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(3);
                                                                        break loop9;
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        if(_loc9_ && Base64)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           break loop14;
                                                                        }
                                                                        addr02b0:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        addr02a1:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              break loop14;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr02b0);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(§§pop() < _loc4_.length)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop() + BASE64_CHARS.charAt(_loc4_[_loc7_]));
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(_loc9_ && Base64)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc8_ || Boolean(param1)))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr02a0);
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                                  §§goto(addr02b0);
                                                                  addr022a:
                                                               }
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc8_ || Boolean(_loc3_))
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(!(_loc8_ || Boolean(_loc2_)))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr022a);
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr02b0);
                                                               }
                                                               addr01f4:
                                                            }
                                                            §§goto(addr0232);
                                                         }
                                                         §§goto(addr02b0);
                                                      }
                                                      §§goto(addr022a);
                                                   }
                                                   §§goto(addr023e);
                                                }
                                                §§goto(addr022a);
                                             }
                                             §§goto(addr023e);
                                          }
                                          else
                                          {
                                             _loc3_[_loc5_] = param1.readUnsignedByte();
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_ && Boolean(_loc3_))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() + 1);
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc8_)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr01c5);
                                                   }
                                                   §§goto(addr022a);
                                                }
                                                §§goto(addr02a1);
                                             }
                                          }
                                          §§goto(addr01f4);
                                       }
                                       §§goto(addr023e);
                                    }
                                 }
                                 §§goto(addr0116);
                              }
                              §§goto(addr0100);
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0282);
                              }
                              else
                              {
                                 _loc4_[_loc6_ + 1] = 64;
                                 if(_loc9_ && Base64)
                                 {
                                    break;
                                 }
                                 §§goto(addr01f4);
                              }
                           }
                           §§goto(addr023e);
                        }
                        while(true)
                        {
                           §§push(§§pop() + 1);
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              §§goto(addr021a);
                           }
                           §§goto(addr02a8);
                        }
                        §§goto(addr02a1);
                     }
                     §§goto(addr0282);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr0240);
            }
            §§goto(addr022a);
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = decodeToByteArray(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function decodeToByteArray(param1:String) : ByteArray
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:Array = new Array(4);
         var _loc4_:Array = new Array(3);
         var _loc5_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               if(§§pop() >= param1.length)
               {
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     break;
                  }
                  §§goto(addr02a6);
               }
               §§push(0);
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     _loc6_ = §§pop();
                     if(_loc9_ && Boolean(param1))
                     {
                        continue loop0;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(4);
                              if(!(_loc8_ || Boolean(_loc3_)))
                              {
                                 break;
                              }
                              §§push(§§pop() < §§pop());
                              if(_loc8_ || Boolean(_loc2_))
                              {
                                 var _temp_9:* = §§pop();
                                 §§push(_temp_9);
                                 if(_temp_9)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§pop();
                                       if(!_loc9_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§push(§§pop() + _loc6_);
                                                if(_loc9_ && Base64)
                                                {
                                                   break;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§pop() < param1.length);
                                                   addr0125:
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc8_ || Base64))
                                                         {
                                                            continue loop0;
                                                         }
                                                         _loc4_[0] = (_loc3_[0] << 2) + ((_loc3_[1] & 0x30) >> 4);
                                                         if(_loc9_)
                                                         {
                                                            break loop1;
                                                         }
                                                         _loc4_[1] = ((_loc3_[1] & 0x0F) << 4) + ((_loc3_[2] & 0x3C) >> 2);
                                                         if(!_loc9_)
                                                         {
                                                            _loc4_[2] = ((_loc3_[2] & 3) << 6) + _loc3_[3];
                                                            if(_loc8_ || Boolean(_loc2_))
                                                            {
                                                               addr01b4:
                                                               addr01b6:
                                                               §§push(0);
                                                               if(!_loc9_)
                                                               {
                                                                  addr01bd:
                                                                  _loc7_ = §§pop();
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  do
                                                                  {
                                                                     §§push(_loc7_);
                                                                  }
                                                                  while(!_loc9_);
                                                                  
                                                                  continue loop1;
                                                                  addr0234:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= _loc4_.length)
                                                                  {
                                                                     if(_loc9_ && Boolean(param1))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(_loc3_[_loc7_ + 1] != 64)
                                                                     {
                                                                        _loc2_.writeByte(_loc4_[_loc7_]);
                                                                        if(_loc8_ || Boolean(_loc3_))
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                  }
                                                                  addr0252:
                                                                  §§push(_loc5_);
                                                                  addr0281:
                                                                  if(!(_loc9_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr0262:
                                                                     §§push(4);
                                                                     break loop3;
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            §§goto(addr0234);
                                                         }
                                                         §§goto(addr01b4);
                                                      }
                                                      else
                                                      {
                                                         _loc3_[_loc6_] = BASE64_CHARS.indexOf(param1.charAt(_loc5_ + _loc6_));
                                                         if(!(_loc8_ || Base64))
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc6_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!(_loc8_ || Boolean(_loc3_)))
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc9_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            _loc6_ = §§pop();
                                                            if(_loc8_ || Boolean(_loc2_))
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§goto(addr0252);
                                                         }
                                                      }
                                                      §§goto(addr0281);
                                                      continue loop6;
                                                   }
                                                   §§push(_loc7_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(_loc8_ || Base64)
                                                      {
                                                         break loop5;
                                                      }
                                                      addr0265:
                                                      §§push(§§pop());
                                                      if(!(_loc8_ || Base64))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr0281);
                                                   }
                                                   §§goto(addr0262);
                                                }
                                             }
                                             break loop2;
                                             addr0110:
                                          }
                                          §§goto(addr01bd);
                                       }
                                       §§goto(addr0234);
                                    }
                                 }
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr0265);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr0110);
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           _loc7_ = §§pop();
                           if(_loc9_ && Base64)
                           {
                              continue loop0;
                           }
                           §§goto(addr0234);
                        }
                     }
                  }
                  §§goto(addr0262);
               }
               §§goto(addr01b6);
            }
            break;
         }
         _loc2_.position = 0;
         addr02a6:
         return _loc2_;
      }
   }
}

