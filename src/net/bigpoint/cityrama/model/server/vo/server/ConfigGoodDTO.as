package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigGoodDTO implements ILoggableObject
   {
      
      private var _tagIds:Vector.<Number>;
      
      private var _tagConfigs:Vector.<ConfigTagDTO>;
      
      private var _associatedEventIds:Vector.<Number>;
      
      private var _configd:Number;
      
      private var _levelId:Number;
      
      private var _userLevelRequired:Number;
      
      private var _sellable:Boolean;
      
      private var _produceable:Boolean;
      
      private var _giftable:Boolean;
      
      private var _gfxId:int;
      
      private var _localeId:String;
      
      public function ConfigGoodDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!(_loc6_ && Boolean(this)))
         {
            super();
            if(_loc7_)
            {
               this._tagIds = new Vector.<Number>();
               if(!_loc6_)
               {
                  addr0045:
                  this._tagConfigs = new Vector.<ConfigTagDTO>();
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     addr0062:
                     this._associatedEventIds = new Vector.<Number>();
                  }
                  addr0070:
                  var _loc4_:int = 0;
                  var _loc5_:* = param1.t;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc5_,_loc4_));
                     if(_loc6_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        _loc2_ = §§nextvalue(_loc4_,_loc5_);
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           this._tagIds.push(_loc2_);
                        }
                        continue;
                     }
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc7_)
                           {
                              _loc4_ = 0;
                              if(!_loc6_)
                              {
                                 addr00d9:
                                 _loc5_ = param1.eqi;
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc5_,_loc4_));
                                    break loop0;
                                 }
                                 addr0110:
                                 addr0109:
                              }
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 this._configd = param1.id;
                                 if(!_loc6_)
                                 {
                                    this._levelId = param1.l;
                                    if(_loc7_)
                                    {
                                       this._sellable = param1.s;
                                       if(_loc7_)
                                       {
                                          addr014f:
                                          this._produceable = param1.p;
                                          if(_loc7_ || Boolean(param1))
                                          {
                                             §§goto(addr0172);
                                          }
                                          §§goto(addr0191);
                                       }
                                    }
                                    addr0172:
                                    this._giftable = param1.g;
                                    if(_loc7_)
                                    {
                                       addr0181:
                                       this._gfxId = param1.gfx;
                                       if(!_loc6_)
                                       {
                                          addr0191:
                                          this._localeId = param1.lo;
                                       }
                                    }
                                    §§goto(addr019b);
                                 }
                                 addr019b:
                                 return;
                              }
                              §§goto(addr0181);
                           }
                           §§goto(addr014f);
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr0110);
                  }
                  while(§§pop())
                  {
                     _loc3_ = §§nextvalue(_loc4_,_loc5_);
                     if(_loc7_)
                     {
                        this._associatedEventIds.push(_loc3_);
                     }
                     §§goto(addr0109);
                  }
                  §§goto(addr0110);
               }
               §§goto(addr0062);
            }
            §§goto(addr0070);
         }
         §§goto(addr0045);
      }
      
      public function get id() : Number
      {
         return this._configd;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._configd = param1;
         }
      }
      
      public function get levelId() : Number
      {
         return this._levelId;
      }
      
      public function set levelId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._levelId = param1;
         }
      }
      
      public function get sellable() : Boolean
      {
         return this._sellable;
      }
      
      public function set sellable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._sellable = param1;
         }
      }
      
      public function get produceable() : Boolean
      {
         return this._produceable;
      }
      
      public function set produceable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._produceable = param1;
         }
      }
      
      public function get giftable() : Boolean
      {
         return this._giftable;
      }
      
      public function set giftable(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._giftable = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
      
      public function get tagConfigs() : Vector.<ConfigTagDTO>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(this._tagConfigs.length != this._tagIds.length)
            {
               if(_loc1_)
               {
                  §§goto(addr003c);
               }
            }
            return this._tagConfigs;
         }
         addr003c:
         throw new RamaCityError("Use Factory to build ConfigGoods !!!");
      }
      
      public function set tagConfigs(param1:Vector.<ConfigTagDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._tagConfigs = param1;
         }
      }
      
      public function get userLevelRequired() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._userLevelRequired);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     throw new RamaCityError("Use Factory to build ConfigGoods !!!");
                  }
               }
               addr0034:
               return this._userLevelRequired;
            }
         }
         §§goto(addr0034);
      }
      
      public function get isEventGood() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_EVENT);
      }
      
      public function get isSpecialGood() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_SPECIAL);
      }
      
      public function get isKey() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_KEY);
      }
      
      public function get isMedal() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_MEDAL);
      }
      
      public function set userLevelRequired(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._userLevelRequired = param1;
         }
      }
      
      public function get associatedEventIds() : Vector.<Number>
      {
         return this._associatedEventIds;
      }
      
      public function get isDextro() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_DEXTRO);
      }
      
      public function get isConstructionGood() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_CONSTRUCTION);
      }
      
      public function isTaggedGoodByTagName(param1:String) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigTagDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.tagConfigs;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && Boolean(_loc2_))
               {
                  break;
               }
               if(_loc2_.tagName == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
   }
}

