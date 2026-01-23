package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.*;
   import net.bigpoint.cityrama.model.server.interfaces.*;
   import net.bigpoint.cityrama.model.server.vo.server.player.*;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.util.*;
   
   public class PlayerDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _defaultCity:CityDTO;
      
      private var _configUserLevelId:Number;
      
      private var _cities:Vector.<CityDTO>;
      
      private var _inventory:InventoryDTO;
      
      private var _playerName:String;
      
      private var _resources:Dictionary;
      
      private var _configNewsscreenList:ConfigNewsscreenListDTO;
      
      private var _premiumPlayer:Boolean;
      
      private var _questBooks:QuestBookManagerVo;
      
      private var _playerPaymentPackInfo:PlayerPaymentDTO;
      
      private var _enabledFeatures:Vector.<String>;
      
      private var _ui:ClientUIDataDTO;
      
      public function PlayerDTO(param1:Object)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:ResourceDTO = null;
         if(_loc8_)
         {
            super();
            if(!_loc9_)
            {
               this._id = param1.id;
               if(_loc8_ || Boolean(param1))
               {
                  this._defaultCity = new CityDTO(param1.d);
                  if(_loc8_ || Boolean(param1))
                  {
                     this._configUserLevelId = param1.cul;
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        this._premiumPlayer = param1.ip;
                        if(_loc8_)
                        {
                           addr0090:
                           this._playerName = param1.n;
                           if(_loc8_ || Boolean(param1))
                           {
                              this._questBooks = new QuestBookManagerVo(param1.q);
                              if(!_loc9_)
                              {
                                 addr00be:
                                 this._inventory = new InventoryDTO(param1.i);
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    addr00dc:
                                    this._cities = new Vector.<CityDTO>();
                                 }
                              }
                           }
                        }
                        addr00eb:
                        var _loc6_:* = 0;
                        var _loc7_:* = param1.c;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc7_,_loc6_));
                           if(_loc9_ && Boolean(this))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              _loc2_ = §§nextvalue(_loc6_,_loc7_);
                              if(!_loc9_)
                              {
                                 this._cities.push(new CityDTO(_loc2_));
                              }
                              continue;
                           }
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              if(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    this._resources = new Dictionary();
                                    if(_loc8_)
                                    {
                                       §§push(0);
                                       if(_loc8_)
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc8_)
                                          {
                                             _loc7_ = param1.r;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc7_,_loc6_));
                                                if(_loc9_)
                                                {
                                                   break loop0;
                                                }
                                                if(§§pop())
                                                {
                                                   _loc3_ = §§nextvalue(_loc6_,_loc7_);
                                                   _loc5_ = ConfigFactory.buildResourceDTO(_loc3_);
                                                   if(_loc8_)
                                                   {
                                                      this._resources[_loc5_.configId] = _loc5_;
                                                   }
                                                   continue;
                                                }
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§goto(addr01d0);
                                                   }
                                                   §§goto(addr023a);
                                                }
                                                §§goto(addr0278);
                                             }
                                          }
                                          §§goto(addr023a);
                                       }
                                       §§goto(addr022a);
                                    }
                                    §§goto(addr020c);
                                 }
                                 §§goto(addr0297);
                              }
                              addr01d0:
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 this._configNewsscreenList = new ConfigNewsscreenListDTO(param1.ns);
                                 if(_loc8_)
                                 {
                                    this._playerPaymentPackInfo = new PlayerPaymentDTO(param1.p);
                                    if(_loc8_)
                                    {
                                       addr020c:
                                       this._enabledFeatures = new Vector.<String>();
                                       if(_loc8_ || Boolean(_loc2_))
                                       {
                                          addr022a:
                                          _loc6_ = 0;
                                          if(!(_loc9_ && Boolean(_loc3_)))
                                          {
                                             addr023a:
                                             _loc7_ = param1.ef;
                                             if(_loc8_)
                                             {
                                             }
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc7_,_loc6_));
                                                break loop0;
                                             }
                                          }
                                          addr0278:
                                          if(!(_loc9_ && Boolean(_loc2_)))
                                          {
                                             addr0288:
                                             if(param1.ui)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr0297:
                                                   this._ui = new ClientUIDataDTO(param1.ui);
                                                }
                                             }
                                             §§goto(addr02a7);
                                          }
                                          §§goto(addr0297);
                                       }
                                       §§goto(addr02a7);
                                    }
                                    §§goto(addr0288);
                                 }
                                 §§goto(addr0297);
                              }
                              addr02a7:
                              return;
                           }
                           §§goto(addr0276);
                        }
                        while(§§pop())
                        {
                           _loc4_ = §§nextvalue(_loc6_,_loc7_);
                           if(!_loc9_)
                           {
                              this._enabledFeatures.push(_loc4_);
                           }
                           §§push(§§hasnext(_loc7_,_loc6_));
                        }
                        §§goto(addr0276);
                     }
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr0090);
            }
            §§goto(addr00eb);
         }
         §§goto(addr00be);
      }
      
      public function get defaultCity() : CityDTO
      {
         return this._defaultCity;
      }
      
      public function set defaultCity(param1:CityDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._defaultCity = param1;
         }
      }
      
      public function get cities() : Vector.<CityDTO>
      {
         return this._cities;
      }
      
      public function set cities(param1:Vector.<CityDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._cities = param1;
         }
      }
      
      public function get resources() : Dictionary
      {
         return this._resources;
      }
      
      public function set resources(param1:Dictionary) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._resources = param1;
         }
      }
      
      public function get inventory() : InventoryDTO
      {
         return this._inventory;
      }
      
      public function set inventory(param1:InventoryDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._inventory = param1;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._id = param1;
         }
      }
      
      public function get premiumPlayer() : Boolean
      {
         return this._premiumPlayer;
      }
      
      public function set premiumPlayer(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && param1))
         {
            this._premiumPlayer = param1;
         }
      }
      
      public function get configUserLevelId() : Number
      {
         return this._configUserLevelId;
      }
      
      public function set configUserLevelId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._configUserLevelId = param1;
         }
      }
      
      public function get questBooks() : QuestBookManagerVo
      {
         return this._questBooks;
      }
      
      public function set questBooks(param1:QuestBookManagerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._questBooks = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get playerName() : String
      {
         return this._playerName;
      }
      
      public function get configNewsscreenList() : ConfigNewsscreenListDTO
      {
         return this._configNewsscreenList;
      }
      
      public function set configNewsscreenList(param1:ConfigNewsscreenListDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._configNewsscreenList = param1;
         }
      }
      
      public function get playerPaymentPackInfo() : PlayerPaymentDTO
      {
         return this._playerPaymentPackInfo;
      }
      
      public function get enabledFeatures() : Vector.<String>
      {
         return this._enabledFeatures;
      }
      
      public function set enabledFeatures(param1:Vector.<String>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._enabledFeatures = param1;
         }
      }
      
      public function get ui() : ClientUIDataDTO
      {
         return this._ui;
      }
      
      public function set ui(param1:ClientUIDataDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._ui = param1;
         }
      }
   }
}

