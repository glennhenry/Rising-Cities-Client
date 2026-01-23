package org.bytearray.explorer
{
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import org.bytearray.explorer.events.SWFExplorerErrorEvent;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   
   public final class SWFExplorer extends URLLoader
   {
      
      private static const NOT_COMPRESSED:int = 70;
      
      private static const COMPRESSED:int = 67;
      
      private static const FULL:int = 63;
      
      private static const SYMBOLCLASS:int = 76;
      
      private static const FILEATTRIBUTES:int = 69;
      
      public static const CLASSES:String = "classes";
      
      public static const ACCELERATION:String = "acceleration";
      
      public static const NONE:int = 0;
      
      public static const DIRECT:int = 1;
      
      public static const GPU:int = 2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NOT_COMPRESSED = 70;
         if(_loc1_)
         {
            COMPRESSED = 67;
            if(_loc1_)
            {
               FULL = 63;
               if(!_loc2_)
               {
                  addr003e:
                  SYMBOLCLASS = 76;
                  if(_loc1_ || _loc1_)
                  {
                     FILEATTRIBUTES = 69;
                     if(!(_loc2_ && _loc1_))
                     {
                        CLASSES = "classes";
                        if(_loc1_)
                        {
                           addr008a:
                           ACCELERATION = "acceleration";
                           if(_loc1_)
                           {
                              NONE = 0;
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr00ad:
                                 DIRECT = 1;
                                 if(_loc1_)
                                 {
                                    addr00ba:
                                    GPU = 2;
                                 }
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00ba);
                           }
                        }
                        addr00c2:
                        return;
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00ad);
            }
         }
      }
      §§goto(addr003e);
      
      private var stream:ByteArray;
      
      private var compressed:int;
      
      private var nBits:int;
      
      private var version:int;
      
      private var length:int;
      
      private var swf:ByteArray;
      
      private var frameRate:int;
      
      private var frameCount:int;
      
      private var dictionary:Array;
      
      private var arrayClasses:Array;
      
      private var accelerationType:int;
      
      private var criteria:int;
      
      private var currentByte:int;
      
      private var bitPosition:int;
      
      private var buffer:uint = 0;
      
      private var pointer:uint = 0;
      
      private var source:uint;
      
      public function SWFExplorer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               this.arrayClasses = new Array();
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr0050);
               }
               §§goto(addr006b);
            }
            addr0050:
            dataFormat = URLLoaderDataFormat.BINARY;
            if(!(_loc1_ && _loc2_))
            {
               addr006b:
               addEventListener(Event.COMPLETE,this.complete);
            }
            §§goto(addr007a);
         }
         addr007a:
      }
      
      private function complete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.parse(data);
         }
      }
      
      public function parse(param1:ByteArray, param2:String = "classes") : Array
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc14_:Array = null;
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = null;
         if(_loc20_ || _loc3_)
         {
            this.stream = param1;
            if(!_loc19_)
            {
               this.arrayClasses = new Array();
               if(_loc20_)
               {
                  this.stream.position = 0;
                  if(!_loc19_)
                  {
                     addr0063:
                     this.compressed = this.stream.readUnsignedByte();
                     if(!_loc19_)
                     {
                        addr0076:
                        this.stream.position += 2;
                        if(!_loc19_)
                        {
                           this.version = this.stream.readUnsignedByte();
                           if(!_loc19_)
                           {
                              addr00a0:
                              this.stream.endian = Endian.LITTLE_ENDIAN;
                              if(_loc20_)
                              {
                                 this.length = this.stream.readUnsignedInt();
                                 if(!_loc19_)
                                 {
                                    addr00c6:
                                    this.stream.endian = Endian.BIG_ENDIAN;
                                    if(!(_loc19_ && Boolean(param1)))
                                    {
                                       this.swf = new ByteArray();
                                       if(_loc20_)
                                       {
                                          addr00f3:
                                          this.stream.readBytes(this.swf,0);
                                          if(_loc20_)
                                          {
                                             addr0108:
                                             if(this.compressed == SWFExplorer.COMPRESSED)
                                             {
                                                if(!_loc19_)
                                                {
                                                   addr011d:
                                                   this.swf.uncompress();
                                                }
                                             }
                                             addr0126:
                                             var _loc3_:uint = this.swf.readUnsignedByte();
                                             §§push(_loc3_);
                                             if(_loc20_)
                                             {
                                                §§push(uint(§§pop() >> 3));
                                             }
                                             var _loc4_:* = §§pop();
                                             §§push(_loc4_);
                                             if(!_loc19_)
                                             {
                                                §§push(uint(§§pop() - 3));
                                             }
                                             var _loc5_:* = §§pop();
                                             §§push(_loc3_);
                                             if(!_loc19_)
                                             {
                                                §§push(uint(§§pop() & 7));
                                             }
                                             var _loc6_:* = §§pop();
                                             if(!_loc19_)
                                             {
                                                this.source = this.swf.readUnsignedByte();
                                             }
                                             §§push(this.readBits(_loc5_));
                                             if(!_loc19_)
                                             {
                                                §§push(uint(§§pop() | (_loc6_ << _loc5_) / 20));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.readBits(_loc4_));
                                             if(_loc20_ || Boolean(param1))
                                             {
                                                §§push(uint(§§pop() / 20));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.readBits(_loc4_));
                                             if(!(_loc19_ && Boolean(this)))
                                             {
                                                §§push(uint(§§pop() / 20));
                                             }
                                             var _loc9_:* = §§pop();
                                             §§push(this.readBits(_loc4_));
                                             if(_loc20_ || Boolean(param1))
                                             {
                                                §§push(uint(§§pop() / 20));
                                             }
                                             var _loc10_:* = §§pop();
                                             var _loc11_:uint = uint(this.swf.readShort() & 0xFF);
                                             var _loc12_:uint = uint(this.swf.readShort());
                                             §§push(_loc12_);
                                             if(!(_loc19_ && Boolean(param2)))
                                             {
                                                §§push(§§pop() >> 8);
                                                if(!_loc19_)
                                                {
                                                   §§push(255);
                                                   if(_loc20_)
                                                   {
                                                      addr022e:
                                                      §§push(§§pop() & §§pop());
                                                      if(_loc20_ || Boolean(param1))
                                                      {
                                                         addr022c:
                                                         addr021d:
                                                         §§push(_loc12_ & 0xFF);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§§pop() << 8);
                                                         }
                                                         §§push(§§pop() | §§pop());
                                                      }
                                                      var _loc13_:uint = §§pop();
                                                      if(!(_loc19_ && Boolean(param2)))
                                                      {
                                                         this.swf.endian = Endian.LITTLE_ENDIAN;
                                                         if(_loc20_ || Boolean(_loc3_))
                                                         {
                                                            this.dictionary = this.browseTables();
                                                            if(_loc20_ || Boolean(param2))
                                                            {
                                                               addr027f:
                                                               if(param2 == SWFExplorer.CLASSES)
                                                               {
                                                                  if(_loc20_ || Boolean(param2))
                                                                  {
                                                                     addr0298:
                                                                     this.criteria = SWFExplorer.SYMBOLCLASS;
                                                                  }
                                                                  _loc14_ = this.dictionary.filter(this.filter);
                                                                  if(_loc14_.length > 0)
                                                                  {
                                                                     if(!_loc19_)
                                                                     {
                                                                        this.swf.position = _loc14_[0].offset;
                                                                        if(!_loc19_)
                                                                        {
                                                                           addr02db:
                                                                           §§push(int(this.swf.readUnsignedShort()));
                                                                           if(!_loc19_)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              if(!(_loc19_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr02fc:
                                                                                 _loc15_ = 0;
                                                                              }
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(_loc20_ || Boolean(_loc3_))
                                                                                          {
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       this.swf.readUnsignedShort();
                                                                                       if(!(_loc20_ || Boolean(param1)))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(this.swf.readByte());
                                                                                       if(!(_loc19_ && Boolean(param2)))
                                                                                       {
                                                                                          _loc17_ = §§pop();
                                                                                          if(!(_loc19_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(new String());
                                                                                             if(!(_loc19_ && Boolean(this)))
                                                                                             {
                                                                                                _loc18_ = §§pop();
                                                                                                if(_loc19_ && Boolean(param2))
                                                                                                {
                                                                                                }
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   if(!(_loc19_ && Boolean(param1)))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc19_ && Boolean(_loc3_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(this.arrayClasses);
                                                                                                               if(_loc20_ || Boolean(param2))
                                                                                                               {
                                                                                                                  §§pop().push(_loc18_);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  addr03e9:
                                                                                                                  _loc15_++;
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  addr04c1:
                                                                                                                  return this.arrayClasses;
                                                                                                               }
                                                                                                            }
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         §§push(_loc18_);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + String.fromCharCode(_loc17_));
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                            addr0371:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc18_ = §§pop();
                                                                                                            if(_loc19_ && Boolean(param2))
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            §§push(this.swf.readByte());
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc17_ = §§pop();
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                         §§goto(addr03e9);
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                      addr03b2:
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                addr03a2:
                                                                                             }
                                                                                             §§goto(addr0371);
                                                                                          }
                                                                                          §§goto(addr03a2);
                                                                                       }
                                                                                       §§goto(addr03b2);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr0423:
                                                                              dispatchEvent(new SWFExplorerEvent(SWFExplorerEvent.COMPLETE,this.arrayClasses));
                                                                              §§goto(addr04c1);
                                                                              addr03f1:
                                                                           }
                                                                           §§goto(addr02fc);
                                                                        }
                                                                        §§goto(addr03f1);
                                                                     }
                                                                     §§goto(addr02db);
                                                                  }
                                                                  else
                                                                  {
                                                                     dispatchEvent(new SWFExplorerErrorEvent(SWFExplorerErrorEvent.NO_DEFINITIONS));
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§goto(addr0423);
                                                                     }
                                                                  }
                                                               }
                                                               else if(param2 == SWFExplorer.ACCELERATION)
                                                               {
                                                                  if(_loc20_)
                                                                  {
                                                                     this.criteria = SWFExplorer.FILEATTRIBUTES;
                                                                  }
                                                                  _loc14_ = this.dictionary.filter(this.filter);
                                                                  if(_loc14_.length > 0)
                                                                  {
                                                                     if(!(_loc19_ && Boolean(this)))
                                                                     {
                                                                        this.swf.position = _loc14_[0].offset;
                                                                        if(_loc20_)
                                                                        {
                                                                           addr04a7:
                                                                           §§push(this);
                                                                           §§push(this.swf.readByte() & 0xE0);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(§§pop() >> 5);
                                                                           }
                                                                           §§pop().accelerationType = §§pop();
                                                                        }
                                                                        §§goto(addr04c1);
                                                                     }
                                                                     §§goto(addr04a7);
                                                                  }
                                                               }
                                                               §§goto(addr04c1);
                                                            }
                                                            §§goto(addr0298);
                                                         }
                                                      }
                                                      §§goto(addr027f);
                                                   }
                                                   §§goto(addr022c);
                                                }
                                                §§goto(addr021d);
                                             }
                                             §§goto(addr022e);
                                          }
                                          §§goto(addr011d);
                                       }
                                       §§goto(addr0108);
                                    }
                                    §§goto(addr0126);
                                 }
                                 §§goto(addr011d);
                              }
                              §§goto(addr0126);
                           }
                           §§goto(addr00f3);
                        }
                        §§goto(addr00c6);
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0063);
            }
            §§goto(addr0076);
         }
         §§goto(addr011d);
      }
      
      private function readBits(param1:uint) : uint
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            this.buffer = 0;
         }
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               while(§§pop() < param1)
               {
                  §§push(1);
                  if(!(_loc8_ && Boolean(param1)))
                  {
                     §§push(§§pop() << 7);
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        addr005c:
                        var _loc5_:* = this;
                        §§push(_loc5_.pointer);
                        if(_loc7_)
                        {
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           §§push(_temp_6);
                           if(_loc7_ || Boolean(param1))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc6_:* = §§pop();
                           if(_loc7_)
                           {
                              _loc5_.pointer = _loc6_;
                           }
                        }
                        §§push(§§pop() >> §§pop());
                     }
                     §§push(§§pop());
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _loc2_ = §§pop();
                        if(_loc7_)
                        {
                           §§push(uint((this.source & _loc2_) != 0));
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              addr00ce:
                              _loc3_ = §§pop();
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 §§push(this);
                                 §§push(this.buffer);
                                 §§push(_loc3_);
                                 §§push(param1 - 1);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop() - _loc4_);
                                 }
                                 §§pop().buffer = §§pop() | §§pop() << §§pop();
                                 if(!(_loc7_ || Boolean(param1)))
                                 {
                                    break;
                                 }
                                 §§push(this.pointer);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() == 8)
                                    {
                                       if(_loc8_ && Boolean(this))
                                       {
                                          continue loop0;
                                       }
                                       addr012f:
                                       this.source = this.swf.readUnsignedByte();
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       this.pointer = 0;
                                       if(!(_loc7_ || Boolean(_loc3_)))
                                       {
                                          continue loop0;
                                       }
                                    }
                                    addr0155:
                                    §§push(_loc4_);
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr015d:
                                 §§push(uint(§§pop() + 1));
                                 if(!(_loc7_ || Boolean(this)))
                                 {
                                    break loop0;
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr012f);
                           }
                           §§goto(addr015d);
                        }
                        §§goto(addr0155);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr005c);
               }
               return this.buffer;
            }
            break;
         }
         return §§pop();
      }
      
      private function filter(param1:TagInfos, param2:int, param3:Array) : Boolean
      {
         return param1.tag == this.criteria;
      }
      
      private function browseTables() : Array
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc4_:TagInfos = null;
         var _loc3_:Array = new Array();
         while(true)
         {
            §§push(this.swf.readShort() >> 6);
            if(!_loc7_)
            {
               §§push(1023);
               if(!_loc7_)
               {
                  §§push(§§pop() & §§pop());
                  if(_loc6_)
                  {
                     addr015a:
                     var _temp_1:* = §§pop();
                     addr015b:
                     var _loc5_:* = §§pop();
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        addr016f:
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           addr016a:
                           _loc1_ = §§pop();
                           §§push(_loc5_);
                        }
                        if(!§§pop())
                        {
                           break;
                        }
                        _loc4_ = new TagInfos();
                        _loc4_.tag = _loc1_;
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           _loc4_.offset = this.swf.position;
                           if(_loc6_)
                           {
                              this.swf.position -= 2;
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              §§push(this.swf.readShort() & 0x3F);
                              if(_loc6_)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc7_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() < SWFExplorer.FULL)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr00b2:
                                             this.swf.position += _loc2_;
                                             if(!(_loc7_ && Boolean(_loc2_)))
                                             {
                                                addr0114:
                                                _loc4_.endOffset = this.swf.position;
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                             }
                                             addr0126:
                                             _loc3_.push(_loc4_);
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          addr00dd:
                                          _loc2_ = int(this.swf.readUnsignedInt());
                                          if(_loc6_)
                                          {
                                             _loc4_.offset = this.swf.position;
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                addr00fe:
                                                this.swf.position += _loc2_;
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr0114);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr00fe);
                                       }
                                       §§goto(addr0114);
                                    }
                                    §§goto(addr00dd);
                                 }
                                 §§goto(addr0126);
                              }
                              §§goto(addr00dd);
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr016a);
                  }
                  §§goto(addr016f);
               }
               §§goto(addr015b);
            }
            §§goto(addr015a);
         }
         return _loc3_;
      }
      
      public function getDefinitions() : Array
      {
         return this.arrayClasses;
      }
      
      public function getTotalDefinitions() : uint
      {
         return this.arrayClasses.length;
      }
      
      public function get acceleration() : int
      {
         return this.accelerationType;
      }
   }
}

final class TagInfos
{
   
   public var offset:int;
   
   public var endOffset:int;
   
   public var tag:int;
   
   public function TagInfos()
   {
      super();
   }
}
