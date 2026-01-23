package net.bigpoint.cityrama.model.LocalStorage
{
   import flash.net.SharedObject;
   import net.bigpoint.cityrama.model.LocalStorage.vo.LocalUserDataVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.util.CityramaLogger;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class LocalStorageProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "LocalStorageProxy";
      
      private static const ADDITIONAL_OPTIONS_STORAGE:String = "OptionsMenuPopupProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "LocalStorageProxy";
         if(!(_loc1_ && _loc1_))
         {
            addr002a:
            ADDITIONAL_OPTIONS_STORAGE = "OptionsMenuPopupProxy";
         }
         return;
      }
      §§goto(addr002a);
      
      private const RISINGCITIES:String = "RCLocalData";
      
      private var _playerProxy:PlayerProxy;
      
      private var _userdata:LocalUserDataVo;
      
      private var _storageAdditionalOptionsMenu:SharedObject;
      
      private var _errorAdditionalOptionsMenu:Boolean;
      
      private var _storageMainOptionsMenu:SharedObject;
      
      private var _errorMainOptionsMenu:Boolean;
      
      private var _storageUserData:SharedObject;
      
      private var _errorStorageUserData:Boolean;
      
      public function LocalStorageProxy(param1:String = null, param2:Object = null)
      {
         var proxyName:String;
         var $data:Object;
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc6_ && Boolean(param2)))
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_ || Boolean(param1))
            {
               addr003c:
               $data = param2;
               if(_loc5_)
               {
                  super(proxyName,$data);
               }
            }
            try
            {
               this._storageMainOptionsMenu = SharedObject.getLocal(OptionsMenuProxy.NAME);
               if(!(_loc6_ && Boolean(this)))
               {
                  this._storageMainOptionsMenu.data[OptionsMenuNavigationConstants.TOGGLE_ZOOM] = false;
                  if(_loc5_)
                  {
                     this._storageMainOptionsMenu.data[OptionsMenuNavigationConstants.TOGGLE_BASES] = false;
                     if(_loc5_ || Boolean(param2))
                     {
                        try
                        {
                           addr00e1:
                           this._storageAdditionalOptionsMenu = SharedObject.getLocal(ADDITIONAL_OPTIONS_STORAGE);
                           if(_loc5_ || _loc3_)
                           {
                              this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION] = false;
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr0128:
                                 this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE] = false;
                                 if(_loc5_)
                                 {
                                    this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION] = false;
                                    if(_loc5_)
                                    {
                                       this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS] = true;
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS] = true;
                                          if(!_loc6_)
                                          {
                                             §§goto(addr0188);
                                          }
                                          §§goto(addr01e5);
                                       }
                                       addr0188:
                                       this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS] = false;
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          try
                                          {
                                             addr01e5:
                                             this._storageUserData = SharedObject.getLocal(this.RISINGCITIES + this.playerProxy.player.id);
                                          }
                                          catch(e:Error)
                                          {
                                             if(!_loc6_)
                                             {
                                                this._errorStorageUserData = true;
                                             }
                                             CityramaLogger.logger.fatal("Unable to allocate shared object : " + e.message);
                                          }
                                       }
                                       §§goto(addr0244);
                                    }
                                 }
                                 §§goto(addr01e5);
                              }
                              §§goto(addr0244);
                           }
                           §§goto(addr0128);
                        }
                        catch(e:Error)
                        {
                           if(!(_loc6_ && Boolean(this)))
                           {
                              this._errorAdditionalOptionsMenu = true;
                           }
                           CityramaLogger.logger.fatal("Unable to allocate shared object : " + e.message);
                           §§goto(addr01e5);
                        }
                        §§goto(addr0244);
                     }
                     §§goto(addr0188);
                  }
                  §§goto(addr01e5);
               }
               §§goto(addr0128);
            }
            catch(e:Error)
            {
               if(_loc5_ || Boolean(param2))
               {
                  this._errorMainOptionsMenu = true;
               }
               CityramaLogger.logger.fatal("Unable to allocate sharedObject: " + e.message);
               §§goto(addr00e1);
            }
            addr0244:
            return;
         }
         §§goto(addr003c);
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
      }
      
      private function set localData(param1:LocalUserDataVo) : void
      {
         var $data:LocalUserDataVo;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         $data = param1;
         try
         {
            this.cookie.data.userdata = $data;
            if(!(_loc5_ && Boolean(this)))
            {
               this.cookie.flush();
            }
         }
         catch(e:Error)
         {
            CityramaLogger.logger.fatal("LocalStorageProxy: Unable to flush userdata: " + e.message);
         }
      }
      
      public function get userdata() : LocalUserDataVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._userdata);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr0042:
                     this._userdata = this.localData;
                  }
               }
               return this._userdata;
            }
         }
         §§goto(addr0042);
      }
      
      public function flush() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.localData = this._userdata;
         }
      }
      
      private function get localData() : LocalUserDataVo
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocalUserDataVo = null;
         if(!_loc3_)
         {
            if(this.cookie != null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(this.cookie.data.userdata == null)
                  {
                     if(!_loc3_)
                     {
                        addr005b:
                        this.cookie.data.userdata = new LocalUserDataVo();
                     }
                  }
                  _loc1_ = new LocalUserDataVo(this.cookie.data.userdata);
                  §§goto(addr007f);
               }
               §§goto(addr005b);
            }
            addr007f:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function get cookie() : SharedObject
      {
         try
         {
            return SharedObject.getLocal(this.RISINGCITIES + this.playerProxy.player.id);
         }
         catch(e:Error)
         {
         }
         return null;
      }
      
      private function get playerProxy() : PlayerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._playerProxy);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0054:
                     this._playerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  }
               }
               return this._playerProxy;
            }
         }
         §§goto(addr0054);
      }
      
      public function get additionalOptionsCookie() : SharedObject
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(!this._errorAdditionalOptionsMenu)
            {
               if(!_loc1_)
               {
                  return this._storageAdditionalOptionsMenu;
               }
            }
         }
         return null;
      }
      
      public function get mainOptionsMenuCookie() : SharedObject
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._errorMainOptionsMenu)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr002a);
               }
            }
            return null;
         }
         addr002a:
         return this._storageMainOptionsMenu;
      }
      
      public function isAdditionalOptionSelected(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this._errorAdditionalOptionsMenu);
            if(!(_loc2_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc3_ || _loc2_)
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(_loc3_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              §§push(this._storageAdditionalOptionsMenu == null);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr008a:
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    addr0090:
                                    var _temp_10:* = §§pop();
                                    addr0091:
                                    §§push(_temp_10);
                                    if(_temp_10)
                                    {
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00a2:
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             §§goto(addr00a8);
                                          }
                                          §§goto(addr00ec);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr0090);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr008a);
            }
            §§goto(addr00a2);
         }
         addr00a8:
         §§push(this._storageAdditionalOptionsMenu.data[param1] == null);
         if(_loc3_ || Boolean(param1))
         {
            addr00cd:
            §§push(!§§pop());
            if(_loc3_ || Boolean(param1))
            {
               addr00db:
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00ec:
                     return this._storageAdditionalOptionsMenu.data[param1];
                  }
               }
               return true;
            }
         }
      }
      
      public function isMainOptionSelected(param1:String) : Boolean
      {
         var item:String;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         item = param1;
         if(_loc4_)
         {
            §§push(this._errorMainOptionsMenu);
            if(_loc4_ || _loc2_)
            {
               §§push(!§§pop());
               if(!(_loc5_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc4_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              §§push(this._storageMainOptionsMenu == null);
                              if(!_loc5_)
                              {
                                 addr0077:
                                 §§push(!§§pop());
                                 if(_loc4_ || Boolean(this))
                                 {
                                    addr0086:
                                    var _temp_7:* = §§pop();
                                    addr0087:
                                    §§push(_temp_7);
                                    if(_temp_7)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop();
                                          if(!_loc5_)
                                          {
                                             addr00a7:
                                             addr0098:
                                             if(this._storageMainOptionsMenu.data[item] == null)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   this._storageMainOptionsMenu.data[item] = true;
                                                }
                                                try
                                                {
                                                   addr00d6:
                                                   this._storageMainOptionsMenu.flush();
                                                   if(_loc5_)
                                                   {
                                                      addr0180:
                                                      §§push(this._storageMainOptionsMenu.data[item] == null);
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr01c0);
                                                      }
                                                      §§goto(addr01a7);
                                                   }
                                                }
                                                catch(e:Error)
                                                {
                                                   CityramaLogger.logger.fatal("Unable to flush storage: " + e.message);
                                                }
                                                §§goto(addr01bf);
                                             }
                                             else
                                             {
                                                §§push(this._errorMainOptionsMenu);
                                                if(!_loc5_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc4_)
                                                   {
                                                      addr0123:
                                                      var _temp_11:* = §§pop();
                                                      §§push(_temp_11);
                                                      §§push(_temp_11);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§pop();
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this._storageMainOptionsMenu == null);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     addr0157:
                                                                     §§push(!§§pop());
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        addr0166:
                                                                        var _temp_15:* = §§pop();
                                                                        addr0167:
                                                                        §§push(_temp_15);
                                                                        if(_temp_15)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr0171:
                                                                              §§pop();
                                                                              if(!(_loc5_ && Boolean(param1)))
                                                                              {
                                                                                 §§goto(addr0180);
                                                                              }
                                                                              §§goto(addr01bf);
                                                                           }
                                                                           §§goto(addr01c0);
                                                                        }
                                                                        §§goto(addr01a7);
                                                                     }
                                                                     §§goto(addr0171);
                                                                  }
                                                                  addr01c0:
                                                                  §§push(!§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr01a7:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           return this._storageMainOptionsMenu.data[item];
                                                                        }
                                                                     }
                                                                     addr01bf:
                                                                     return true;
                                                                  }
                                                               }
                                                               §§goto(addr01bf);
                                                            }
                                                            §§goto(addr0157);
                                                         }
                                                         §§goto(addr0166);
                                                      }
                                                      §§goto(addr0167);
                                                   }
                                                   §§goto(addr01a7);
                                                }
                                                §§goto(addr0123);
                                             }
                                          }
                                          §§goto(addr00d6);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr00a7);
            }
            §§goto(addr0077);
         }
         §§goto(addr00d6);
      }
      
      public function flushMainOptions(param1:String, param2:Boolean) : void
      {
         var item:String;
         var value:Boolean;
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0060);
         }
         addr002b:
         value = param2;
         if(!(_loc6_ && param2))
         {
            if(this._storageMainOptionsMenu != null)
            {
               if(_loc5_ || _loc3_)
               {
                  addr0060:
                  this._storageMainOptionsMenu.data[item] = value;
                  if(_loc5_)
                  {
                     try
                     {
                        this._storageMainOptionsMenu.flush();
                        addr0077:
                     }
                     catch(e:Error)
                     {
                        CityramaLogger.logger.fatal("Unable to flush storage: " + e.message);
                     }
                  }
               }
               §§goto(addr00b7);
            }
            §§goto(addr0077);
         }
         addr00b7:
      }
      
      public function get viewedPlayfieldItems() : Vector.<Number>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.userdata);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr003d);
                  }
               }
               §§goto(addr0041);
            }
            addr003d:
            return this.userdata.viewedPlayfieldItemConfigIds;
         }
         addr0041:
         return this.cookie.data.userdata.viewedPlayfieldItemConfigIds;
      }
      
      public function get viewedQuest() : Vector.<Number>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.userdata);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr003e);
                  }
               }
               §§goto(addr0042);
            }
            addr003e:
            return this.userdata.viewedQuests;
         }
         addr0042:
         return this.cookie.data.userdata.viewedQuests;
      }
      
      public function resetCookies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.localData = new LocalUserDataVo();
            if(!(_loc1_ && Boolean(this)))
            {
               addr0038:
               this.cookie.data.userdata = this.localData;
            }
            return;
         }
         §§goto(addr0038);
      }
   }
}

