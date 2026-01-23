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
         super();
         this.arrayClasses = new Array();
         addEventListener(Event.COMPLETE,this.complete);
      }
      
      private function complete(param1:Event) : void
      {
      }
      
      public function parse(param1:ByteArray, param2:String = "classes", param3:String = "") : Array
      {
         var _loc15_:Array = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:String = null;
         this.stream = param1;
         this.arrayClasses = new Array();
         this.stream.position = 0;
         this.compressed = this.stream.readUnsignedByte();
         this.stream.position += 2;
         this.version = this.stream.readUnsignedByte();
         this.stream.endian = Endian.LITTLE_ENDIAN;
         this.length = this.stream.readUnsignedInt();
         this.stream.endian = Endian.BIG_ENDIAN;
         this.swf = new ByteArray();
         this.stream.readBytes(this.swf,0);
         if(this.compressed == SWFExplo.COMPRESSED)
         {
            this.swf.uncompress();
         }
         var _loc4_:uint = this.swf.readUnsignedByte();
         var _loc5_:uint = uint(_loc4_ >> 3);
         var _loc6_:uint = uint(_loc5_ - 3);
         var _loc7_:uint = uint(_loc4_ & 7);
         this.source = this.swf.readUnsignedByte();
         var _loc8_:uint = uint(this.readBits(_loc6_) | (_loc7_ << _loc6_) / 20);
         var _loc9_:uint = this.readBits(_loc5_) / 20;
         var _loc10_:uint = this.readBits(_loc5_) / 20;
         var _loc11_:uint = this.readBits(_loc5_) / 20;
         var _loc12_:uint = uint(this.swf.readShort() & 0xFF);
         var _loc13_:uint = uint(this.swf.readShort());
         var _loc14_:uint = uint(_loc13_ >> 8 & 0xFF | (_loc13_ & 0xFF) << 8);
         this.swf.endian = Endian.LITTLE_ENDIAN;
         this.dictionary = this.browseTables();
         if(param2 == SWFExplorer.CLASSES)
         {
            this.criteria = SWFExplo.SYMBOLCLASS;
            _loc15_ = this.dictionary.filter(this.filter);
            if(_loc15_.length > 0)
            {
               this.swf.position = _loc15_[0].offset;
               _loc17_ = int(this.swf.readUnsignedShort());
               _loc16_ = 0;
               while(_loc16_ < _loc17_)
               {
                  this.swf.readUnsignedShort();
                  _loc18_ = this.swf.readByte();
                  _loc19_ = new String();
                  while(_loc18_ != 0)
                  {
                     _loc19_ += String.fromCharCode(_loc18_);
                     _loc18_ = this.swf.readByte();
                  }
                  this.arrayClasses.push(_loc19_);
                  _loc16_++;
               }
            }
            else
            {
               dispatchEvent(new SWFExplorerErrorEvent(SWFExplorerErrorEvent.NO_DEFINITIONS));
            }
            dispatchEvent(new SWFExplorerEvent(SWFExplorerEvent.COMPLETE,this.arrayClasses,param3,this));
         }
         else if(param2 == SWFExplorer.ACCELERATION)
         {
            this.criteria = SWFExplo.FILEATTRIBUTES;
            _loc15_ = this.dictionary.filter(this.filter);
            if(_loc15_.length > 0)
            {
               this.swf.position = _loc15_[0].offset;
               this.accelerationType = (this.swf.readByte() & 0xE0) >> 5;
            }
         }
         return this.arrayClasses;
      }
      
      private function readBits(param1:uint) : uint
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         this.buffer = 0;
         var _loc4_:uint = 0;
         while(_loc4_ < param1)
         {
            _loc2_ = uint(1 << 7 >> this.pointer++);
            _loc3_ = uint((this.source & _loc2_) != 0);
            this.buffer |= _loc3_ << param1 - 1 - _loc4_;
            if(this.pointer == 8)
            {
               this.source = this.swf.readUnsignedByte();
               this.pointer = 0;
            }
            _loc4_++;
         }
         return this.buffer;
      }
      
      private function filter(param1:TagInfos, param2:int, param3:Array) : Boolean
      {
         return param1.tag == this.criteria;
      }
      
      private function browseTables() : Array
      {
         var _loc1_:int = 0;
         var _loc2_:* = 0;
         var _loc4_:TagInfos = null;
         var _loc3_:Array = new Array();
         while(true)
         {
            _loc1_ = this.swf.readShort() >> 6 & 0x03FF;
            if(!_loc1_)
            {
               break;
            }
            _loc4_ = new TagInfos();
            _loc4_.tag = _loc1_;
            _loc4_.offset = this.swf.position;
            this.swf.position -= 2;
            _loc2_ = this.swf.readShort() & 0x3F;
            if(_loc2_ < SWFExplo.FULL)
            {
               this.swf.position += _loc2_;
            }
            else
            {
               _loc2_ = int(this.swf.readUnsignedInt());
               _loc4_.offset = this.swf.position;
               this.swf.position += _loc2_;
            }
            _loc4_.endOffset = this.swf.position;
            _loc3_.push(_loc4_);
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
