package net.bigpoint.cityrama.model.cinema
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaRewardMiniLayerVo;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CinemaDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCinemaDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CinemaProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CinemaProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "CinemaProxy";
      }
      
      private var _cinemaRewardPaymentPack:ConfigPaymentPackDTO;
      
      private var _disabledByAID:Boolean;
      
      private var _inMaintenance:Boolean;
      
      private var _cP:GameConfigProxy;
      
      private var _ciP:CityProxy;
      
      private var _exIP:ExternalInterfaceProxy;
      
      private var _tP:TimerProxy;
      
      private var _pOP:PlayfieldObjectsProxy;
      
      public function CinemaProxy()
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super(NAME);
         }
         var _loc1_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         if(_loc3_)
         {
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  addr005f:
                  this._disabledByAID = _loc1_.cinemaDisabled;
                  if(!_loc2_)
                  {
                     this._inMaintenance = _loc1_.cinemaInMaintenance;
                  }
               }
            }
            _loc1_ = null;
            return;
         }
         §§goto(addr005f);
      }
      
      public function get cinemaLayerVo() : CinemaLayerVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:TimerBarComponentVo = null;
         var _loc1_:CinemaLayerVo = new CinemaLayerVo();
         if(!(_loc4_ && _loc3_))
         {
            _loc1_.maxViews = this.maxViews;
            if(!_loc4_)
            {
               _loc1_.realCurrencyRewardAmount = this.rewardRealCurrencyAmount;
               if(!_loc4_)
               {
                  §§goto(addr004f);
               }
               §§goto(addr00d7);
            }
            §§goto(addr005c);
         }
         addr004f:
         _loc1_.videosWatchedToday = this.videosWatchedToday;
         if(_loc3_)
         {
            addr005c:
            if(_loc1_.videosLeftToday > 0)
            {
               if(!_loc4_)
               {
                  _loc1_.videoAvailableFromProvider = this.externalInterfaceProxy.cinemaVideoAvailable();
                  if(_loc3_)
                  {
                     addr0081:
                     §§push(_loc1_.videoAvailable);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           §§goto(addr0099);
                        }
                        §§goto(addr00b9);
                     }
                     addr0099:
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr00b9:
                           §§pop();
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00d3);
                           }
                           §§goto(addr00d7);
                        }
                     }
                     addr00d3:
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00d7);
            }
            §§goto(addr0081);
         }
         addr00c8:
         if(this.currentCinemaDTO.resetTimeStamp > 0)
         {
            addr00d7:
            _loc2_ = new TimerBarComponentVo();
            if(!_loc4_)
            {
               _loc2_.waitingForStart = false;
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  _loc2_.cycleLength = this.resetTimerCycleLength;
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     _loc2_.targetTime = this.currentCinemaDTO.resetTimeStamp;
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§push(_loc2_);
                        §§push(_loc2_.targetTime);
                        if(_loc3_)
                        {
                           §§push(§§pop() - _loc2_.cycleLength);
                        }
                        §§pop().startTime = §§pop();
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0158);
                        }
                     }
                     §§goto(addr0172);
                  }
               }
               addr0158:
               _loc2_.currentTime = this.timerProxy.currentTimeStamp;
               if(!(_loc4_ && _loc3_))
               {
                  addr0172:
                  _loc1_.availabilityTimer = _loc2_;
               }
               §§goto(addr0177);
            }
            §§goto(addr0172);
         }
         addr0177:
         return _loc1_;
      }
      
      public function get cinemaRewardMiniLayerVo() : CinemaRewardMiniLayerVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CinemaRewardMiniLayerVo = new CinemaRewardMiniLayerVo();
         if(!_loc2_)
         {
            _loc1_.maxViews = this.maxViews;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.viewsLeft = Math.max(this.maxViews - this.currentCinemaDTO.viewsToday,0);
               if(_loc3_ || _loc3_)
               {
                  _loc1_.paymentPack = this.cinemaPaymentPack;
                  if(_loc3_ || _loc2_)
                  {
                     addr008c:
                     _loc1_.cinemaLocaleId = this.cinemaPlayfieldItemConfig.localeId;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr008c);
      }
      
      public function get videosWatchedToday() : uint
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.currentCinemaDTO);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr0046:
                     return this.currentCinemaDTO.viewsToday;
                     addr0042:
                  }
               }
               return 0;
            }
            §§goto(addr0046);
         }
         §§goto(addr0042);
      }
      
      public function get maxViews() : uint
      {
         return this.cinemaConfigDTO.maxViewsPerDay;
      }
      
      public function get disabledByAID() : Boolean
      {
         return this._disabledByAID;
      }
      
      public function get inMaintenance() : Boolean
      {
         return this._inMaintenance;
      }
      
      public function set inMaintenance(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._inMaintenance = param1;
            if(_loc3_ || _loc3_)
            {
               §§push(this.cinemaPlayfieldItem);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr0059:
                        §§push(this.cinemaPlayfieldItem);
                        if(!_loc2_)
                        {
                           addr0062:
                           §§pop().cinemaFieldObjectVo.inMaintenance = this.inMaintenance;
                           if(!_loc2_)
                           {
                              addr0075:
                              this.cinemaPlayfieldItem.invalidateIconStateManager();
                              if(!_loc2_)
                              {
                                 addr007e:
                                 sendNotification(ApplicationNotificationConstants.CINEMA_MAINTENANCE_CHANGED,this.inMaintenance);
                              }
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0075);
                     }
                  }
                  addr008d:
                  return;
               }
               §§goto(addr0062);
            }
            §§goto(addr007e);
         }
         §§goto(addr0059);
      }
      
      private function get resetTimerCycleLength() : Number
      {
         return this.cinemaConfigDTO.maxResetLifeTime;
      }
      
      private function get currentCinemaDTO() : CinemaDTO
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.cityProxy);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§pop().city);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop().cinema);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           addr006f:
                           return this.cityProxy.city.cinema;
                           addr006c:
                           addr0069:
                           addr0064:
                        }
                     }
                     return null;
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006c);
            }
            §§goto(addr0069);
         }
         §§goto(addr0064);
      }
      
      private function get cinemaConfigDTO() : ConfigCinemaDTO
      {
         return this.configProxy.config.configCinema;
      }
      
      private function get cinemaPlayfieldItemConfig() : ConfigPlayfieldItemDTO
      {
         return this.cinemaPlayfieldItem.cinemaFieldObjectVo.configPlayfieldItemVo;
      }
      
      private function get cinemaPlayfieldItem() : CinemaFieldObject
      {
         return this.playfieldObjectProxy.cinemaFieldObject;
      }
      
      private function get cinemaPaymentPack() : ConfigPaymentPackDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigPaymentPackDTO = null;
         if(_loc5_ || Boolean(this))
         {
            if(!this._cinemaRewardPaymentPack)
            {
               addr0031:
               var _loc2_:int = 0;
               for each(_loc1_ in this.configProxy.config.paymentPacks)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  if(_loc1_.type == ServerPaymentPackConst.CINEMA)
                  {
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        this._cinemaRewardPaymentPack = _loc1_;
                     }
                     break;
                  }
               }
            }
            return this._cinemaRewardPaymentPack;
         }
         §§goto(addr0031);
      }
      
      private function get rewardRealCurrencyAmount() : uint
      {
         return this.cinemaPaymentPack.resources[0].outputAmount;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._cP);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr003a:
                     this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._cP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get cityProxy() : CityProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._ciP);
            if(!(_loc2_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this._ciP = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
                  }
               }
               addr004b:
               return this._ciP;
            }
         }
         §§goto(addr004b);
      }
      
      private function get externalInterfaceProxy() : ExternalInterfaceProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._exIP);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this._exIP = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
                  }
               }
               addr0043:
               return this._exIP;
            }
         }
         §§goto(addr0043);
      }
      
      private function get timerProxy() : TimerProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._tP);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               addr0054:
               return this._tP;
            }
         }
         §§goto(addr0054);
      }
      
      private function get playfieldObjectProxy() : PlayfieldObjectsProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._pOP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr0039:
                     this._pOP = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  }
               }
               return this._pOP;
            }
         }
         §§goto(addr0039);
      }
   }
}

