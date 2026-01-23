package net.bigpoint.cityrama.model.server.vo
{
   public class MessageVo
   {
      
      public var headerLength:uint;
      
      public var messageLength:uint;
      
      private var _json:*;
      
      private var _header:String;
      
      public function MessageVo(param1:String = "", param2:* = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super();
            if(!_loc3_)
            {
               this._json = param1;
               if(!_loc3_)
               {
                  addr0040:
                  this._header = param2;
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      public function get bytesExpected() : uint
      {
         return this.messageLength + this.headerLength;
      }
      
      public function get json() : *
      {
         return this._json;
      }
      
      public function get header() : String
      {
         return this._header;
      }
      
      public function set json(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._json = param1;
         }
      }
      
      public function set header(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._header = param1;
         }
      }
      
      public function toString() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = "";
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push("MessageVo{");
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     _loc1_ = §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(_loc1_);
                        if(_loc3_ || Boolean(this))
                        {
                           §§push("json: ");
                           if(_loc3_)
                           {
                              addr006a:
                              §§push(§§pop() + this.json);
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr0082);
                                 }
                                 §§goto(addr00c0);
                              }
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr00cc);
                  }
                  addr0082:
                  §§push(§§pop());
                  if(_loc3_ || Boolean(this))
                  {
                     addr0090:
                     _loc1_ = §§pop();
                     if(!_loc2_)
                     {
                        addr0096:
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           §§push(", header: ");
                           if(!_loc2_)
                           {
                              §§push(§§pop() + this._header);
                              if(_loc3_)
                              {
                                 addr00ba:
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    addr00c0:
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       addr00c6:
                                       _loc1_ = §§pop();
                                       if(_loc3_)
                                       {
                                          §§goto(addr00cc);
                                       }
                                       §§goto(addr00df);
                                    }
                                    §§goto(addr00da);
                                 }
                                 §§goto(addr00de);
                              }
                           }
                           §§goto(addr00dd);
                        }
                        §§goto(addr00da);
                     }
                     addr00cc:
                     §§goto(addr00e0);
                  }
                  addr00e0:
                  §§push(_loc1_);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00de:
                     _loc1_ = §§pop() + "}";
                     addr00df:
                     §§push(_loc1_);
                     addr00da:
                     addr00dd:
                  }
                  return §§pop();
               }
               §§goto(addr006a);
            }
            §§goto(addr0090);
         }
         §§goto(addr0096);
      }
      
      public function clone() : MessageVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MessageVo = new MessageVo();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.messageLength = this.messageLength;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.headerLength = this.headerLength;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.header = this.header;
                  if(!_loc2_)
                  {
                     _loc1_.json = this.json;
                  }
               }
            }
         }
         return _loc1_;
      }
   }
}

