package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPaymentPackDTO
   {
      
      private var _id:Number;
      
      private var _key:String;
      
      private var _type:String;
      
      private var _locaId:int;
      
      private var _gfxId:int;
      
      private var _resources:Vector.<ConfigOutputDTO>;
      
      private var _goods:Vector.<ConfigOutputDTO>;
      
      private var _permissions:Vector.<ConfigOutputDTO>;
      
      private var _assists:Vector.<ConfigOutputDTO>;
      
      private var _improvements:Vector.<ConfigOutputDTO>;
      
      private var _tagIds:Vector.<Number>;
      
      private var _priceRC:Number = 0;
      
      private var _configTags:Vector.<ConfigTagDTO>;
      
      private var _upsellPackages:Vector.<ConfigPaymentPackUpsellingDTO>;
      
      public function ConfigPaymentPackDTO(param1:Object)
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         if(!(_loc12_ && Boolean(_loc3_)))
         {
            super();
            if(_loc11_ || Boolean(this))
            {
               this._id = param1.id;
               if(_loc11_ || Boolean(_loc2_))
               {
                  this._key = param1.k;
                  if(!_loc12_)
                  {
                     addr0079:
                     this._type = param1.t;
                     if(_loc11_ || Boolean(_loc3_))
                     {
                        addr0091:
                        this._locaId = param1.fl;
                        if(!_loc12_)
                        {
                           addr00a1:
                           this._gfxId = param1.gf;
                           if(!_loc12_)
                           {
                              if(param1.rc)
                              {
                                 if(_loc11_)
                                 {
                                    this._priceRC = param1.rc;
                                    if(!(_loc12_ && Boolean(_loc3_)))
                                    {
                                       addr00d7:
                                       this._resources = new Vector.<ConfigOutputDTO>();
                                    }
                                 }
                                 addr00e4:
                                 var _loc9_:* = 0;
                                 var _loc10_:* = param1.r;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       _loc2_ = §§nextvalue(_loc9_,_loc10_);
                                       if(!_loc12_)
                                       {
                                          this._resources.push(new ConfigOutputDTO(_loc2_));
                                       }
                                       continue;
                                    }
                                    if(!(_loc12_ && Boolean(param1)))
                                    {
                                       if(_loc11_ || Boolean(this))
                                       {
                                          if(_loc11_ || Boolean(_loc2_))
                                          {
                                             this._goods = new Vector.<ConfigOutputDTO>();
                                             if(!_loc12_)
                                             {
                                                §§push(0);
                                                if(_loc11_)
                                                {
                                                   _loc9_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      _loc10_ = param1.g;
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc10_,_loc9_));
                                                         if(!_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            _loc3_ = §§nextvalue(_loc9_,_loc10_);
                                                            if(!_loc12_)
                                                            {
                                                               this._goods.push(new ConfigOutputDTO(_loc3_));
                                                            }
                                                            continue;
                                                         }
                                                         if(!(_loc12_ && Boolean(param1)))
                                                         {
                                                            if(_loc11_ || Boolean(_loc3_))
                                                            {
                                                               if(!(_loc12_ && Boolean(_loc3_)))
                                                               {
                                                                  this._permissions = new Vector.<ConfigOutputDTO>();
                                                                  if(_loc11_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc12_ && Boolean(param1)))
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        if(!_loc12_)
                                                                        {
                                                                           _loc10_ = param1.p;
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc10_,_loc9_));
                                                                              if(!(_loc11_ || Boolean(this)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    this._permissions.push(new ConfigOutputDTO(_loc4_));
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(_loc11_ || Boolean(param1))
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       this._assists = new Vector.<ConfigOutputDTO>();
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr0280:
                                                                                          §§push(0);
                                                                                          if(_loc11_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr0290:
                                                                                             _loc9_ = §§pop();
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr0298:
                                                                                                _loc10_ = param1.a;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc10_,_loc9_));
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   _loc6_ = §§nextvalue(_loc9_,_loc10_);
                                                                                                   if(_loc11_ || Boolean(this))
                                                                                                   {
                                                                                                      this._upsellPackages.push(new ConfigPaymentPackUpsellingDTO(_loc6_));
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc10_,_loc9_));
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                addr04e0:
                                                                                                return;
                                                                                                addr04d8:
                                                                                                addr04de:
                                                                                                addr04dc:
                                                                                                addr02ca:
                                                                                             }
                                                                                             addr033f:
                                                                                             _loc10_ = param1.i;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc10_,_loc9_));
                                                                                                if(_loc11_ || Boolean(this))
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr04d8);
                                                                                          }
                                                                                          addr03e6:
                                                                                          _loc9_ = §§pop();
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             _loc10_ = param1.tag;
                                                                                             if(_loc11_ || Boolean(_loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc10_,_loc9_));
                                                                                                   if(!(_loc12_ && Boolean(this)))
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr04d8);
                                                                                                addr0428:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this._tagIds.push(_loc8_);
                                                                                                §§goto(addr0428);
                                                                                             }
                                                                                             addr041f:
                                                                                          }
                                                                                          addr044b:
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr0453:
                                                                                             this._configTags = new Vector.<ConfigTagDTO>();
                                                                                             if(_loc11_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr046f:
                                                                                                this._upsellPackages = new Vector.<ConfigPaymentPackUpsellingDTO>();
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr0485:
                                                                                                   _loc9_ = 0;
                                                                                                   addr0483:
                                                                                                   if(_loc11_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      addr0495:
                                                                                                      _loc10_ = param1.up;
                                                                                                      §§goto(addr04d5);
                                                                                                   }
                                                                                                   §§goto(addr04de);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr04e0);
                                                                                       }
                                                                                       addr03de:
                                                                                       §§push(0);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§goto(addr03e6);
                                                                                       }
                                                                                       §§goto(addr0485);
                                                                                    }
                                                                                    §§goto(addr0280);
                                                                                 }
                                                                                 §§goto(addr044b);
                                                                              }
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!(_loc12_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    this._improvements = new Vector.<ConfigOutputDTO>();
                                                                                    if(!(_loc12_ && Boolean(param1)))
                                                                                    {
                                                                                       addr0310:
                                                                                       if(param1.i)
                                                                                       {
                                                                                          if(_loc11_ || Boolean(_loc2_))
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc11_ || Boolean(param1))
                                                                                                {
                                                                                                   §§goto(addr033f);
                                                                                                }
                                                                                                §§goto(addr0495);
                                                                                             }
                                                                                             §§goto(addr03e6);
                                                                                          }
                                                                                          §§goto(addr0483);
                                                                                       }
                                                                                    }
                                                                                    addr03b4:
                                                                                    this._tagIds = new Vector.<Number>();
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       if(param1.tag)
                                                                                       {
                                                                                          if(_loc11_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§goto(addr03de);
                                                                                          }
                                                                                          §§goto(addr046f);
                                                                                       }
                                                                                       §§goto(addr0453);
                                                                                    }
                                                                                    §§goto(addr046f);
                                                                                 }
                                                                                 §§goto(addr04e0);
                                                                              }
                                                                              if(!(_loc12_ && Boolean(_loc2_)))
                                                                              {
                                                                                 §§goto(addr03b4);
                                                                              }
                                                                              §§goto(addr03de);
                                                                           }
                                                                           do
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc7_ = §§nextvalue(_loc9_,_loc10_);
                                                                                 if(!(_loc12_ && Boolean(this)))
                                                                                 {
                                                                                    this._improvements.push(new ConfigOutputDTO(_loc7_));
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc12_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr0394:
                                                                                 if(!(_loc12_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§goto(addr03a4);
                                                                                 }
                                                                                 §§goto(addr0495);
                                                                              }
                                                                              §§goto(addr04dc);
                                                                           }
                                                                           while(§§push(§§hasnext(_loc10_,_loc9_)), _loc11_ || Boolean(this));
                                                                           
                                                                           §§goto(addr04d8);
                                                                        }
                                                                        §§goto(addr04de);
                                                                     }
                                                                     §§goto(addr0290);
                                                                  }
                                                                  §§goto(addr0483);
                                                               }
                                                               §§goto(addr0453);
                                                            }
                                                            §§goto(addr0298);
                                                         }
                                                         §§goto(addr04dc);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  §§goto(addr044b);
                                                               }
                                                               §§goto(addr04de);
                                                            }
                                                            §§goto(addr04dc);
                                                         }
                                                         else
                                                         {
                                                            _loc8_ = §§nextvalue(_loc9_,_loc10_);
                                                            if(!(_loc12_ && Boolean(param1)))
                                                            {
                                                               §§goto(addr041f);
                                                            }
                                                            §§goto(addr0428);
                                                         }
                                                      }
                                                      §§goto(addr04d8);
                                                   }
                                                   §§goto(addr04de);
                                                }
                                                §§goto(addr0290);
                                             }
                                             §§goto(addr0310);
                                          }
                                          §§goto(addr03de);
                                       }
                                       §§goto(addr0298);
                                    }
                                    §§goto(addr04dc);
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          §§goto(addr02dd);
                                       }
                                       §§goto(addr0394);
                                    }
                                    else
                                    {
                                       _loc5_ = §§nextvalue(_loc9_,_loc10_);
                                       if(_loc11_ || Boolean(this))
                                       {
                                          this._assists.push(new ConfigOutputDTO(_loc5_));
                                       }
                                       §§goto(addr02ca);
                                    }
                                 }
                                 §§goto(addr04d8);
                              }
                              §§goto(addr00d7);
                           }
                        }
                        §§goto(addr00e4);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0079);
            }
         }
         §§goto(addr00a1);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get resources() : Vector.<ConfigOutputDTO>
      {
         return this._resources;
      }
      
      public function get goods() : Vector.<ConfigOutputDTO>
      {
         return this._goods;
      }
      
      public function get permissions() : Vector.<ConfigOutputDTO>
      {
         return this._permissions;
      }
      
      public function get assists() : Vector.<ConfigOutputDTO>
      {
         return this._assists;
      }
      
      public function get improvements() : Vector.<ConfigOutputDTO>
      {
         return this._improvements;
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
      
      public function get priceRC() : Number
      {
         return this._priceRC;
      }
      
      public function get configTags() : Vector.<ConfigTagDTO>
      {
         return this._configTags;
      }
      
      public function set configTags(param1:Vector.<ConfigTagDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._configTags = param1;
         }
      }
      
      public function get locaId() : int
      {
         return this._locaId;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get upsellPackages() : Vector.<ConfigPaymentPackUpsellingDTO>
      {
         return this._upsellPackages;
      }
   }
}

