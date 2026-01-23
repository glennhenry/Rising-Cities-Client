package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigPlayfieldExpansionDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _playfieldId:Number;
      
      private var _px:Number;
      
      private var _py:Number;
      
      private var _sx:Number;
      
      private var _sy:Number;
      
      private var _neighbourIDList:Vector.<Number>;
      
      private var _gfx:int;
      
      private var _localid:int;
      
      private var _itemType:int;
      
      private var _normalPrice:int;
      
      private var _premiumPrice:int;
      
      private var _preload:Boolean;
      
      private var _initialPlayfieldItems:Vector.<ConfigInitialPlayfieldItemDTO>;
      
      private var _listOfEventIds:Vector.<Number>;
      
      public function ConfigPlayfieldExpansionDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         if(_loc8_)
         {
            super();
            if(_loc8_)
            {
               this._id = param1.id;
               if(_loc8_ || Boolean(this))
               {
                  this._playfieldId = param1.pf;
                  if(_loc8_ || Boolean(this))
                  {
                     this._px = param1.px;
                     if(_loc8_)
                     {
                        this._py = param1.py;
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           this._sx = param1.sx;
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              this._sy = param1.sy;
                              if(_loc8_ || Boolean(param1))
                              {
                                 addr00b0:
                                 this._gfx = param1.gf;
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    this._itemType = param1.it;
                                    if(!(_loc7_ && Boolean(_loc3_)))
                                    {
                                       this._preload = param1.fp;
                                       if(_loc8_)
                                       {
                                          addr00ed:
                                          this._localid = param1.fl;
                                          if(!_loc7_)
                                          {
                                             addr00fc:
                                             this._normalPrice = param1.np;
                                             if(!(_loc7_ && Boolean(_loc3_)))
                                             {
                                                addr0114:
                                                this._premiumPrice = param1.pp;
                                                if(_loc8_ || Boolean(_loc3_))
                                                {
                                                   addr0137:
                                                   this._neighbourIDList = new Vector.<Number>();
                                                }
                                                addr0145:
                                                var _loc5_:* = 0;
                                                var _loc6_:* = param1.nx;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc6_,_loc5_));
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      _loc2_ = §§nextvalue(_loc5_,_loc6_);
                                                      if(!(_loc7_ && Boolean(_loc2_)))
                                                      {
                                                         this._neighbourIDList.push(_loc2_);
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc7_ && Boolean(this)))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            this._initialPlayfieldItems = new Vector.<ConfigInitialPlayfieldItemDTO>();
                                                            if(!_loc7_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc7_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc6_ = param1.icpi;
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc6_,_loc5_));
                                                                        if(!_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                                                           if(!(_loc7_ && Boolean(_loc3_)))
                                                                           {
                                                                              this._initialPlayfieldItems.push(new ConfigInitialPlayfieldItemDTO(_loc3_));
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!(_loc7_ && Boolean(this)))
                                                                        {
                                                                           addr0218:
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc8_ || Boolean(this))
                                                                              {
                                                                                 this._listOfEventIds = new Vector.<Number>();
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr0246:
                                                                                    _loc5_ = 0;
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       _loc6_ = param1.e;
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc6_,_loc5_));
                                                                                             break loop1;
                                                                                          }
                                                                                          addr0285:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this._listOfEventIds.push(_loc4_);
                                                                                          §§goto(addr0285);
                                                                                       }
                                                                                       addr027c:
                                                                                    }
                                                                                    addr028e:
                                                                                 }
                                                                              }
                                                                              §§goto(addr0290);
                                                                           }
                                                                           §§goto(addr028e);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr028e);
                                                               }
                                                               §§goto(addr0246);
                                                            }
                                                         }
                                                         addr0290:
                                                         return;
                                                      }
                                                      §§goto(addr028e);
                                                   }
                                                   §§goto(addr0218);
                                                }
                                                for(; §§pop(); §§push(§§hasnext(_loc6_,_loc5_)))
                                                {
                                                   _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr027c);
                                                }
                                                §§goto(addr028c);
                                             }
                                          }
                                          §§goto(addr0137);
                                       }
                                       §§goto(addr0114);
                                    }
                                    §§goto(addr00fc);
                                 }
                                 §§goto(addr0114);
                              }
                              §§goto(addr0137);
                           }
                           §§goto(addr00fc);
                        }
                        §§goto(addr0145);
                     }
                  }
                  §§goto(addr0137);
               }
            }
            §§goto(addr00ed);
         }
         §§goto(addr00b0);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._id = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get px() : Number
      {
         return this._px;
      }
      
      public function set px(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._px = param1;
         }
      }
      
      public function get py() : Number
      {
         return this._py;
      }
      
      public function set py(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._py = param1;
         }
      }
      
      public function get sx() : Number
      {
         return this._sx;
      }
      
      public function set sx(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._sx = param1;
         }
      }
      
      public function get sy() : Number
      {
         return this._sy;
      }
      
      public function set sy(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._sy = param1;
         }
      }
      
      public function get neighbourIDList() : Vector.<Number>
      {
         return this._neighbourIDList;
      }
      
      public function set neighbourIDList(param1:Vector.<Number>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._neighbourIDList = param1;
         }
      }
      
      public function get playfieldId() : Number
      {
         return this._playfieldId;
      }
      
      public function set playfieldId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._playfieldId = param1;
         }
      }
      
      public function get gfx() : int
      {
         return this._gfx;
      }
      
      public function set gfx(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._gfx = param1;
         }
      }
      
      public function get localid() : int
      {
         return this._localid;
      }
      
      public function set localid(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._localid = param1;
         }
      }
      
      public function get itemType() : int
      {
         return this._itemType;
      }
      
      public function set itemType(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._itemType = param1;
         }
      }
      
      public function get normalPrice() : int
      {
         return this._normalPrice;
      }
      
      public function get premiumPrice() : int
      {
         return this._premiumPrice;
      }
      
      public function set premiumPrice(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._premiumPrice = param1;
         }
      }
      
      public function get preload() : Boolean
      {
         return this._preload;
      }
      
      public function set preload(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._preload = param1;
         }
      }
      
      public function get initialPlayfieldItems() : Vector.<ConfigInitialPlayfieldItemDTO>
      {
         return this._initialPlayfieldItems;
      }
      
      public function get listOfEventIds() : Vector.<Number>
      {
         return this._listOfEventIds;
      }
   }
}

