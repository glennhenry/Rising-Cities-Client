package org.bytearray.explorer
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import org.bytearray.explorer.events.SWFExplorerErrorEvent;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   
   public final class SWFExplo extends EventDispatcher
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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && SWFExplo))
      {
         NOT_COMPRESSED = 70;
         if(!_loc1_)
         {
            COMPRESSED = 67;
            if(_loc2_ || SWFExplo)
            {
               FULL = 63;
               if(_loc2_)
               {
                  SYMBOLCLASS = 76;
                  if(!_loc1_)
                  {
                     FILEATTRIBUTES = 69;
                     if(!_loc1_)
                     {
                        CLASSES = "classes";
                        if(!_loc1_)
                        {
                           addr007f:
                           ACCELERATION = "acceleration";
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr009f);
                           }
                           §§goto(addr00c1);
                        }
                        addr009f:
                        NONE = 0;
                        if(!(_loc1_ && _loc1_))
                        {
                           addr00b4:
                           DIRECT = 1;
                           if(_loc2_)
                           {
                              addr00c1:
                              GPU = 2;
                           }
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00c1);
            }
         }
      }
      addr00c9:
      
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
      
      public function SWFExplo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               this.arrayClasses = new Array();
               if(_loc2_ || _loc1_)
               {
                  addEventListener(Event.COMPLETE,this.complete);
               }
            }
         }
      }
      
      private function complete(param1:Event) : void
      {
      }
      
      public function parse(param1:ByteArray, param2:String = "classes", param3:String = "") : Array
      {
         §§push(false);
         var _loc20_:Boolean = true;
         var _loc21_:* = §§pop();
         var _loc15_:Array = null;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc19_:* = null;
         if(!_loc21_)
         {
            this.stream = param1;
            if(_loc20_)
            {
               this.arrayClasses = new Array();
               if(!(_loc21_ && Boolean(param1)))
               {
                  this.stream.position = 0;
                  if(_loc20_ || Boolean(param3))
                  {
                     this.compressed = this.stream.readUnsignedByte();
                     if(_loc20_)
                     {
                        addr007a:
                        this.stream.position += 2;
                        if(_loc20_)
                        {
                           this.version = this.stream.readUnsignedByte();
                           if(!_loc21_)
                           {
                              this.stream.endian = Endian.LITTLE_ENDIAN;
                              if(!_loc21_)
                              {
                                 this.length = this.stream.readUnsignedInt();
                                 if(_loc20_ || Boolean(param3))
                                 {
                                    this.stream.endian = Endian.BIG_ENDIAN;
                                    if(_loc20_)
                                    {
                                       addr00e6:
                                       this.swf = new ByteArray();
                                       if(!(_loc21_ && Boolean(this)))
                                       {
                                          addr00ff:
                                          this.stream.readBytes(this.swf,0);
                                          if(!_loc21_)
                                          {
                                             if(this.compressed == SWFExplo.COMPRESSED)
                                             {
                                                if(!_loc21_)
                                                {
                                                   addr0128:
                                                   this.swf.uncompress();
                                                }
                                             }
                                             addr0131:
                                             var _loc4_:uint = this.swf.readUnsignedByte();
                                             §§push(_loc4_);
                                             if(!_loc21_)
                                             {
                                                §§push(uint(§§pop() >> 3));
                                             }
                                             var _loc5_:* = §§pop();
                                             §§push(_loc5_);
                                             if(!(_loc21_ && Boolean(param2)))
                                             {
                                                §§push(uint(§§pop() - 3));
                                             }
                                             var _loc6_:* = §§pop();
                                             §§push(_loc4_);
                                             if(_loc20_ || Boolean(this))
                                             {
                                                §§push(uint(§§pop() & 7));
                                             }
                                             var _loc7_:* = §§pop();
                                             if(_loc20_ || Boolean(param2))
                                             {
                                                this.source = this.swf.readUnsignedByte();
                                             }
                                             §§push(this.readBits(_loc6_));
                                             if(!_loc21_)
                                             {
                                                §§push(uint(§§pop() | (_loc7_ << _loc6_) / 20));
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.readBits(_loc5_));
                                             if(_loc20_)
                                             {
                                                §§push(uint(§§pop() / 20));
                                             }
                                             var _loc9_:* = §§pop();
                                             §§push(this.readBits(_loc5_));
                                             if(_loc20_ || Boolean(param3))
                                             {
                                                §§push(uint(§§pop() / 20));
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(this.readBits(_loc5_));
                                             if(!(_loc21_ && Boolean(param3)))
                                             {
                                                §§push(uint(§§pop() / 20));
                                             }
                                             var _loc11_:* = §§pop();
                                             var _loc12_:uint = uint(this.swf.readShort() & 0xFF);
                                             var _loc13_:uint = uint(this.swf.readShort());
                                             §§push(_loc13_);
                                             if(!(_loc21_ && Boolean(this)))
                                             {
                                                §§push(§§pop() >> 8);
                                                if(_loc20_ || Boolean(this))
                                                {
                                                   §§push(255);
                                                   if(!(_loc21_ && Boolean(param1)))
                                                   {
                                                      addr0260:
                                                      addr0261:
                                                      §§push(§§pop() & §§pop());
                                                      if(_loc20_)
                                                      {
                                                         §§push(_loc13_ & 0xFF);
                                                         if(!_loc21_)
                                                         {
                                                            addr024e:
                                                            §§push(§§pop() << 8);
                                                         }
                                                         §§push(§§pop() | §§pop());
                                                      }
                                                      var _loc14_:uint = §§pop();
                                                      if(!(_loc21_ && Boolean(param1)))
                                                      {
                                                         this.swf.endian = Endian.LITTLE_ENDIAN;
                                                         if(_loc20_)
                                                         {
                                                            addr0284:
                                                            this.dictionary = this.browseTables();
                                                            if(!_loc21_)
                                                            {
                                                               if(param2 == SWFExplorer.CLASSES)
                                                               {
                                                                  if(_loc20_ || Boolean(param3))
                                                                  {
                                                                     addr02ad:
                                                                     this.criteria = SWFExplo.SYMBOLCLASS;
                                                                  }
                                                                  addr02b7:
                                                                  _loc15_ = this.dictionary.filter(this.filter);
                                                                  if(_loc15_.length > 0)
                                                                  {
                                                                     if(_loc20_ || Boolean(param3))
                                                                     {
                                                                        this.swf.position = _loc15_[0].offset;
                                                                        if(_loc20_)
                                                                        {
                                                                           §§push(int(this.swf.readUnsignedShort()));
                                                                           if(!_loc21_)
                                                                           {
                                                                              _loc17_ = §§pop();
                                                                              if(!(_loc21_ && Boolean(param3)))
                                                                              {
                                                                                 addr0318:
                                                                                 _loc16_ = 0;
                                                                                 addr0316:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc16_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc17_);
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(_loc21_ && Boolean(param1))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.swf.readUnsignedShort();
                                                                                          if(!(_loc20_ || Boolean(param2)))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(this.swf.readByte());
                                                                                          if(_loc21_ && Boolean(param2))
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          _loc18_ = §§pop();
                                                                                          if(!(_loc21_ && Boolean(param1)))
                                                                                          {
                                                                                             §§push(new String());
                                                                                             if(!(_loc21_ && Boolean(this)))
                                                                                             {
                                                                                                _loc19_ = §§pop();
                                                                                                if(_loc20_ || Boolean(param2))
                                                                                                {
                                                                                                }
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc18_);
                                                                                                   if(!(_loc20_ || Boolean(param1)))
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(this.arrayClasses);
                                                                                                         if(!(_loc21_ && Boolean(param2)))
                                                                                                         {
                                                                                                            §§pop().push(_loc19_);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               _loc16_++;
                                                                                                               if(_loc20_ || Boolean(this))
                                                                                                               {
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                            }
                                                                                                            addr043f:
                                                                                                            dispatchEvent(new SWFExplorerEvent(SWFExplorerEvent.COMPLETE,this.arrayClasses,param3,this));
                                                                                                            addr04eb:
                                                                                                            return this.arrayClasses;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc20_ || Boolean(param1))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + String.fromCharCode(_loc18_));
                                                                                                         }
                                                                                                         addr0395:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc19_ = §§pop();
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(this.swf.readByte());
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            _loc18_ = §§pop();
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§goto(addr043f);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr04eb);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr0395);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr043f);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              addr040d:
                                                                           }
                                                                           §§goto(addr0318);
                                                                        }
                                                                        §§goto(addr0316);
                                                                     }
                                                                     §§goto(addr040d);
                                                                  }
                                                                  else
                                                                  {
                                                                     dispatchEvent(new SWFExplorerErrorEvent(SWFExplorerErrorEvent.NO_DEFINITIONS));
                                                                     if(_loc20_)
                                                                     {
                                                                        §§goto(addr043f);
                                                                     }
                                                                  }
                                                               }
                                                               else if(param2 == SWFExplorer.ACCELERATION)
                                                               {
                                                                  if(!_loc21_)
                                                                  {
                                                                     this.criteria = SWFExplo.FILEATTRIBUTES;
                                                                  }
                                                                  _loc15_ = this.dictionary.filter(this.filter);
                                                                  if(_loc15_.length > 0)
                                                                  {
                                                                     if(!(_loc21_ && Boolean(this)))
                                                                     {
                                                                        this.swf.position = _loc15_[0].offset;
                                                                        if(!(_loc21_ && Boolean(param2)))
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.swf.readByte() & 0xE0);
                                                                           if(_loc20_ || Boolean(param1))
                                                                           {
                                                                              §§push(§§pop() >> 5);
                                                                           }
                                                                           §§pop().accelerationType = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr04eb);
                                                            }
                                                            §§goto(addr02b7);
                                                         }
                                                         §§goto(addr02ad);
                                                      }
                                                      §§goto(addr0284);
                                                   }
                                                   §§goto(addr024e);
                                                }
                                                §§goto(addr0260);
                                             }
                                             §§goto(addr0261);
                                          }
                                       }
                                    }
                                    §§goto(addr0128);
                                 }
                                 §§goto(addr00e6);
                              }
                           }
                           §§goto(addr00ff);
                        }
                     }
                     §§goto(addr00e6);
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr0131);
         }
         §§goto(addr00ff);
      }
      
      private function readBits(param1:uint) : uint
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!_loc8_)
         {
            this.buffer = 0;
         }
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               while(§§pop() < param1)
               {
                  §§push(1);
                  if(!_loc8_)
                  {
                     §§push(§§pop() << 7);
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        addr004b:
                        var _loc5_:* = this;
                        §§push(_loc5_.pointer);
                        if(_loc7_ || Boolean(this))
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(!_loc8_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc6_:* = §§pop();
                           if(!_loc8_)
                           {
                              _loc5_.pointer = _loc6_;
                           }
                        }
                        §§push(§§pop() >> §§pop());
                     }
                     §§push(§§pop());
                     if(_loc8_ && Boolean(param1))
                     {
                        continue;
                     }
                     _loc2_ = §§pop();
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        §§push(uint((this.source & _loc2_) != 0));
                        if(_loc8_)
                        {
                           break loop0;
                        }
                        _loc3_ = §§pop();
                        if(!(_loc7_ || Boolean(_loc2_)))
                        {
                           break;
                        }
                        §§push(this);
                        §§push(this.buffer);
                        §§push(_loc3_);
                        §§push(param1 - 1);
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           §§push(§§pop() - _loc4_);
                        }
                        §§pop().buffer = §§pop() | §§pop() << §§pop();
                        if(!_loc8_)
                        {
                           §§push(this.pointer);
                           if(_loc7_)
                           {
                              if(§§pop() == 8)
                              {
                                 if(_loc8_ && Boolean(param1))
                                 {
                                    continue loop0;
                                 }
                                 addr010f:
                                 this.source = this.swf.readUnsignedByte();
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    addr0129:
                                    this.pointer = 0;
                                    if(_loc8_ && Boolean(param1))
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 addr0151:
                                 §§push(uint(§§pop() + 1));
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              _loc4_ = §§pop();
                              if(!(_loc7_ || Boolean(_loc3_)))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr0151);
                        }
                        §§goto(addr0129);
                     }
                     §§goto(addr010f);
                  }
                  §§goto(addr004b);
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
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  §§push(§§pop() & §§pop());
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     addr0178:
                     var _temp_3:* = §§pop();
                     addr0179:
                     var _loc5_:* = §§pop();
                     §§push(_loc5_);
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && Boolean(this)))
                        {
                           _loc1_ = §§pop();
                           §§push(_loc5_);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  _loc4_ = new TagInfos();
                  _loc4_.tag = _loc1_;
                  if(!(_loc7_ && Boolean(_loc1_)))
                  {
                     _loc4_.offset = this.swf.position;
                     if(_loc6_ || Boolean(this))
                     {
                        addr0067:
                        this.swf.position -= 2;
                        if(!_loc7_)
                        {
                           §§push(this.swf.readShort() & 0x3F);
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc7_ && Boolean(_loc1_)))
                              {
                                 §§push(_loc2_);
                                 if(_loc6_)
                                 {
                                    if(§§pop() < SWFExplo.FULL)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr00c9:
                                          this.swf.position += _loc2_;
                                          if(_loc7_)
                                          {
                                             continue;
                                          }
                                          addr011b:
                                          _loc4_.endOffset = this.swf.position;
                                          if(_loc7_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                       }
                                       addr0135:
                                       _loc3_.push(_loc4_);
                                       continue;
                                    }
                                    addr00ec:
                                    _loc2_ = int(this.swf.readUnsignedInt());
                                    if(!_loc7_)
                                    {
                                       _loc4_.offset = this.swf.position;
                                       if(!_loc7_)
                                       {
                                          this.swf.position += _loc2_;
                                          if(_loc6_)
                                          {
                                             §§goto(addr011b);
                                          }
                                       }
                                       §§goto(addr0135);
                                    }
                                    §§goto(addr011b);
                                 }
                                 §§goto(addr00ec);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00ec);
                        }
                     }
                     §§goto(addr011b);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0179);
            }
            §§goto(addr0178);
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
