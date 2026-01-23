package net.bigpoint.cityrama.model.game
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.preloader.ApplicationSettingsProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadDynamicServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.LoadingItemVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUpcomingEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.util.StringUtil;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class GameConfigProxy extends Proxy
   {
      
      public static const NAME:String = "GameConfigProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         NAME = "GameConfigProxy";
      }
      
      private var _config:ConfigDTO;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _cvTagProxy:CvTagProxy;
      
      private var _fileRuntimeLoadDynamicServiceProxy:FileRuntimeLoadDynamicServiceProxy;
      
      private var _marketPlaceMaintenance:Boolean;
      
      public function GameConfigProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
            if(_loc2_)
            {
               this._cvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
               if(!(_loc1_ && _loc2_))
               {
                  addr0062:
                  this._fileRuntimeLoadDynamicServiceProxy = FileRuntimeLoadDynamicServiceProxy(facade.retrieveProxy(FileRuntimeLoadDynamicServiceProxy.NAME));
                  if(!_loc1_)
                  {
                     this._marketPlaceMaintenance = this._flashVarsProxy.marketMaintenance;
                  }
               }
               return;
            }
         }
         §§goto(addr0062);
      }
      
      override public function onRemove() : void
      {
      }
      
      public function getConfigPlayfieldItemById(param1:Number) : ConfigPlayfieldItemDTO
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(ConfigPlayfieldItemDTO(this._config.items[param1]) == null)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§goto(addr0048);
               }
            }
            return ConfigPlayfieldItemDTO(this._config.items[param1]);
         }
         addr0048:
         return null;
      }
      
      public function getConfigPlayfieldVoById(param1:Number) : ConfigPlayfieldDTO
      {
         return ConfigPlayfieldDTO(this._config.playfields[param1]);
      }
      
      public function getSwfLoadingList() : Vector.<LoadingItemVo>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ConfigPlayfieldItemDTO = null;
         var _loc3_:LoadingItemVo = null;
         var _loc1_:Vector.<LoadingItemVo> = new Vector.<LoadingItemVo>();
         for each(_loc2_ in this._config.items)
         {
            if(_loc6_)
            {
               if(_loc2_.animatedSwfPath == null)
               {
                  continue;
               }
            }
            _loc3_ = new LoadingItemVo();
            if(!(_loc6_ || Boolean(this)))
            {
               continue;
            }
            _loc3_.path = _loc2_.animatedSwfPath;
            if(_loc6_)
            {
               _loc3_.name = _loc2_.animatedSwfName;
               if(_loc7_)
               {
                  continue;
               }
               §§push(_loc3_);
               if(_loc6_ || Boolean(_loc1_))
               {
                  §§push(_loc2_.gfxId);
                  if(!_loc7_)
                  {
                     §§push(31006);
                     if(!_loc7_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc7_)
                        {
                           var _temp_3:* = §§pop();
                           §§push(_temp_3);
                           if(!_temp_3)
                           {
                              if(!_loc7_)
                              {
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    addr00df:
                                    addr00dc:
                                    addr00d8:
                                    §§push(_loc2_.gfxId == 16005);
                                    if(!_loc7_)
                                    {
                                       addr00e6:
                                       if(§§pop())
                                       {
                                          addr00ea:
                                          §§push(false);
                                          if(_loc6_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc2_.preload);
                                          if(!_loc7_)
                                          {
                                             addr010a:
                                             §§push(§§pop());
                                          }
                                       }
                                       §§pop().preload = §§pop();
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          addr011c:
                                          _loc1_.push(_loc3_);
                                       }
                                       continue;
                                    }
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr00ea);
                              }
                              §§goto(addr010a);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr010a);
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr00d8);
            }
            §§goto(addr011c);
         }
         return _loc1_;
      }
      
      public function set config(param1:ConfigDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._config = this.overwritePaths(param1);
            if(_loc3_)
            {
               addr0033:
               this._config = ConfigFactory.buildConfigDTO(this._config);
               if(_loc3_ || Boolean(param1))
               {
                  sendNotification(ApplicationNotificationConstants.GAME_CONFIG_NEW);
               }
            }
            return;
         }
         §§goto(addr0033);
      }
      
      private function overwritePaths(param1:ConfigDTO) : ConfigDTO
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc4_:XML = null;
         var _loc5_:Dictionary = null;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:LoadingItemVo = null;
         var _loc2_:ApplicationSettingsProxy = facade.retrieveProxy(ApplicationSettingsProxy.NAME) as ApplicationSettingsProxy;
         var _loc3_:XML = _loc2_.cvRuntimeLinksXML;
         for each(_loc4_ in _loc3_..playfieldItems.playfieldItem)
         {
            if(_loc17_)
            {
               var _loc14_:int = 0;
               if(_loc17_)
               {
                  for each(_loc6_ in param1.getItemsByGfxId(Number(_loc4_.@id)))
                  {
                     if(_loc6_ == null)
                     {
                        continue;
                     }
                     if(_loc16_)
                     {
                        continue;
                     }
                     _loc6_.animatedSwfPath = _loc4_.swf.text();
                     if(_loc16_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                     §§push(_loc6_);
                     §§push("FieldItem_");
                     if(_loc17_ || Boolean(_loc2_))
                     {
                        §§push(§§pop() + _loc4_.@id);
                        if(_loc17_)
                        {
                           addr00f3:
                           §§push(§§pop() + "_0_0");
                        }
                        §§pop().animatedSwfName = §§pop();
                        continue;
                     }
                     §§goto(addr00f3);
                  }
               }
            }
         }
         _loc5_ = new Dictionary();
         if(!(_loc16_ && Boolean(_loc2_)))
         {
            var _loc12_:int = 0;
            if(_loc17_)
            {
               for each(_loc4_ in _loc3_..guiItems.guiItem)
               {
                  §§push(_loc4_.swf.text());
                  if(_loc17_ || Boolean(_loc3_))
                  {
                     var _temp_8:* = §§pop();
                     §§push(_temp_8);
                     §§push(_temp_8);
                     if(_loc17_ || Boolean(_loc3_))
                     {
                        _loc7_ = §§pop();
                        if(!_loc16_)
                        {
                           _loc8_ = int(§§pop().lastIndexOf(".swf"));
                           if(!_loc16_)
                           {
                              §§push(_loc7_);
                              if(_loc17_ || Boolean(param1))
                              {
                                 addr01af:
                                 §§push(§§pop().substring(_loc7_.lastIndexOf("/") + 1,_loc8_));
                                 if(_loc17_ || Boolean(this))
                                 {
                                    addr01cf:
                                    _loc9_ = §§pop();
                                    if(_loc17_ || Boolean(param1))
                                    {
                                       addr01fe:
                                       addr01df:
                                       §§push(StringUtil.replaceInString(_loc9_,".","_"));
                                       if(_loc17_ || Boolean(this))
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc10_ = §§pop();
                                    }
                                    _loc11_ = new LoadingItemVo();
                                    _loc11_.name = _loc10_;
                                    if(!(_loc16_ && Boolean(_loc2_)))
                                    {
                                       _loc11_.path = _loc7_;
                                       if(!_loc17_)
                                       {
                                          continue;
                                       }
                                       _loc11_.loadingDone = false;
                                       if(_loc16_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc11_.preload = false;
                                    if(!(_loc16_ && Boolean(_loc3_)))
                                    {
                                       _loc5_[_loc10_] = _loc7_;
                                    }
                                    continue;
                                 }
                                 §§goto(addr01fe);
                              }
                              §§goto(addr01cf);
                           }
                           §§goto(addr01df);
                        }
                        §§goto(addr01fe);
                     }
                     §§goto(addr01af);
                  }
                  §§goto(addr01cf);
               }
            }
            if(!_loc16_)
            {
               this._fileRuntimeLoadDynamicServiceProxy.init(_loc5_);
            }
         }
         return param1;
      }
      
      public function get goods() : Dictionary
      {
         return this._config.goods;
      }
      
      public function get resources() : Dictionary
      {
         return this._config.resources;
      }
      
      public function get resourcesIds() : Dictionary
      {
         return this._config.resourceIds;
      }
      
      public function get resourcesStrings() : Dictionary
      {
         return this._config.resourceStrings;
      }
      
      public function getLevelById(param1:Number) : ConfigUserLevelDTO
      {
         return this.config.levels[param1];
      }
      
      public function get config() : ConfigDTO
      {
         return this._config;
      }
      
      public function getConfigPlayfieldItemsByTags(param1:Vector.<String>, param2:Vector.<String>) : Vector.<ConfigPlayfieldItemDTO>
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = false;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc3_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc6_ in this._config.items)
         {
            if(!(_loc16_ || Boolean(param2)))
            {
               continue;
            }
            §§push(0);
            if(_loc16_ || Boolean(_loc3_))
            {
               _loc4_ = §§pop();
               if(_loc16_ || Boolean(_loc3_))
               {
                  §§push(false);
                  if(_loc16_ || Boolean(param1))
                  {
                     _loc5_ = §§pop();
                     if(!_loc17_)
                     {
                        §§push(0);
                        if(!(_loc17_ && Boolean(_loc3_)))
                        {
                           addr00ae:
                           var _loc12_:* = §§pop();
                           if(_loc16_ || Boolean(param1))
                           {
                              var _loc13_:* = _loc6_.tagIds;
                              if(!_loc17_)
                              {
                                 loop1:
                                 for each(_loc7_ in _loc13_)
                                 {
                                    if(_loc16_)
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc16_)
                                          {
                                             var _loc14_:* = §§pop();
                                             if(!_loc17_)
                                             {
                                                var _loc15_:* = param1;
                                                if(_loc16_ || Boolean(_loc3_))
                                                {
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc15_,_loc14_));
                                                   if(!(_loc16_ || Boolean(_loc3_)))
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(_loc16_ || Boolean(_loc3_))
                                                      {
                                                         if(_loc16_ || Boolean(this))
                                                         {
                                                            if(!(_loc16_ || Boolean(_loc3_)))
                                                            {
                                                               continue loop1;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr01a5:
                                                               while(true)
                                                               {
                                                                  _loc14_ = §§pop();
                                                                  if(!_loc17_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc15_ = param2;
                                                                        if(_loc16_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc15_,_loc14_));
                                                                              break loop5;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr020c:
                                                                              while(true)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           addr0203:
                                                                           addr020a:
                                                                        }
                                                                        addr0200:
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = true;
                                                                           §§goto(addr0203);
                                                                        }
                                                                     }
                                                                     addr01ad:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr020c);
                                                      }
                                                      §§goto(addr020a);
                                                   }
                                                   else
                                                   {
                                                      §§push(§§nextvalue(_loc14_,_loc15_));
                                                      if(_loc16_ || Boolean(param1))
                                                      {
                                                         var _temp_13:* = §§pop();
                                                         §§push(_temp_13);
                                                         §§push(_temp_13);
                                                         if(_loc16_ || Boolean(this))
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr0137:
                                                            §§push(ConfigTagDTO(this.config.tags[_loc7_]).tagName);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc17_ && Boolean(param2)))
                                                            {
                                                               _loc4_++;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push(§§nextvalue(_loc14_,_loc15_));
                                                      if(!(_loc17_ && Boolean(param1)))
                                                      {
                                                         var _temp_17:* = §§pop();
                                                         §§push(_temp_17);
                                                         §§push(_temp_17);
                                                         if(_loc16_)
                                                         {
                                                            _loc9_ = §§pop();
                                                            addr01d9:
                                                            §§push(ConfigTagDTO(this.config.tags[_loc7_]).tagName);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc16_ || Boolean(this))
                                                            {
                                                               §§goto(addr0200);
                                                            }
                                                         }
                                                         §§goto(addr0203);
                                                      }
                                                      §§goto(addr01d9);
                                                   }
                                                   §§goto(addr020a);
                                                }
                                             }
                                             §§goto(addr01ad);
                                          }
                                          §§goto(addr01a5);
                                       }
                                       addr00df:
                                    }
                                    §§goto(addr01a3);
                                 }
                                 addr0217:
                                 if(!(_loc17_ && Boolean(param1)))
                                 {
                                    addr0227:
                                    addr0234:
                                    if(_loc5_)
                                    {
                                       if(!(_loc17_ && Boolean(_loc3_)))
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       addr024c:
                                       if(_loc4_ != param1.length)
                                       {
                                          continue;
                                       }
                                       if(!_loc16_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc3_.push(_loc6_);
                                 }
                                 continue;
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr0217);
                        }
                        §§goto(addr024c);
                     }
                     §§goto(addr0227);
                  }
                  §§goto(addr0234);
               }
               §§goto(addr0227);
            }
            §§goto(addr00ae);
         }
         return _loc3_;
      }
      
      public function getFirstLevelConfigOfBuilding(param1:int) : ConfigPlayfieldItemDTO
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc2_:ConfigPlayfieldItemDTO = this._config.items[param1];
         var _loc3_:* = false;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               while(true)
               {
                  §§push(!§§pop());
               }
               addr00b0:
            }
            while(§§pop())
            {
               §§push(true);
               if(_loc8_)
               {
                  _loc3_ = §§pop();
                  if(!_loc8_)
                  {
                     break;
                  }
                  for each(_loc4_ in this._config.items)
                  {
                     if(_loc4_.nextConfigId == _loc2_.id)
                     {
                        _loc2_ = _loc4_;
                        if(_loc8_ || Boolean(param1))
                        {
                           _loc3_ = false;
                        }
                        break;
                     }
                  }
                  continue loop0;
               }
               §§goto(addr00b0);
            }
            break;
         }
         return _loc2_;
      }
      
      public function getLastLevelConfigOfBuilding(param1:int) : ConfigPlayfieldItemDTO
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = this.getAllLevelConfigs(param1);
         if(_loc3_)
         {
            if(_loc2_.length > 0)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  return _loc2_[_loc2_.length - 1];
               }
            }
         }
         return null;
      }
      
      public function getAllLevelConfigs(param1:int) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc3_:ConfigPlayfieldItemDTO = this.getFirstLevelConfigOfBuilding(param1);
         if(_loc5_ || Boolean(this))
         {
            _loc2_.push(_loc3_);
         }
         while(_loc3_.nextConfigId != 0)
         {
            _loc3_ = this._config.items[_loc3_.nextConfigId];
            if(_loc5_ || Boolean(param1))
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function get marketPlaceMaintenance() : Boolean
      {
         return this._marketPlaceMaintenance;
      }
      
      public function set marketPlaceMaintenance(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(param1 != this._marketPlaceMaintenance)
            {
               if(!_loc2_)
               {
                  this._marketPlaceMaintenance = param1;
                  if(_loc3_)
                  {
                     addr0044:
                     sendNotification(ApplicationNotificationConstants.MARKETPLACE_MAINTENANCE_CHANGED);
                  }
                  §§goto(addr004f);
               }
               §§goto(addr0044);
            }
         }
         addr004f:
      }
      
      public function getConfigPlayfieldItemsByPermissionId(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc3_ in this.config.items)
         {
            if(!_loc6_)
            {
               if(_loc3_.permissionConfigId == param1)
               {
                  if(_loc7_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function updateEvents(param1:Vector.<ConfigEventDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.config.runningEvents = param1;
            if(!_loc3_)
            {
               addr0022:
               sendNotification(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
            }
            return;
         }
         §§goto(addr0022);
      }
      
      public function updateUpcommingEvents(param1:Vector.<ConfigUpcomingEventDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.config.upcomingEvents = param1;
            if(!(_loc2_ && _loc3_))
            {
               addr0041:
               sendNotification(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
            }
            return;
         }
         §§goto(addr0041);
      }
      
      public function getRestrictions() : Dictionary
      {
         return this.config.restrictions;
      }
   }
}

