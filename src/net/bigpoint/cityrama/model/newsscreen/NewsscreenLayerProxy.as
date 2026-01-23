package net.bigpoint.cityrama.model.newsscreen
{
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNewsscreenListDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNewsscreenSlideDTO;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsScreenSlideVo;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsscreenPopupVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class NewsscreenLayerProxy extends Proxy
   {
      
      public static const NAME:String = "NewsscreenLayerProxy";
      
      private static const DATA_REQUEST_BUFFER_TIME:Number = 300000;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "NewsscreenLayerProxy";
         if(!_loc2_)
         {
            addr002b:
            §§push(§§findproperty(DATA_REQUEST_BUFFER_TIME));
            §§push(1000 * 60);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() * 5);
            }
            §§pop().DATA_REQUEST_BUFFER_TIME = §§pop();
         }
         return;
      }
      §§goto(addr002b);
      
      private var _playerProxy:PlayerProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _layerData:NewsscreenPopupVo;
      
      private var _openedOnStartup:Boolean;
      
      private var _lastRequestTimeStamp:Number;
      
      public function NewsscreenLayerProxy(param1:String = "NewsscreenLayerProxy", param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      private static function sortOnOrderId(param1:NewsScreenSlideVo, param2:NewsScreenSlideVo) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(param1.orderId);
            if(!_loc3_)
            {
               §§push(param2.orderId);
               if(_loc4_ || NewsscreenLayerProxy)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_ || Boolean(param2))
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && Boolean(param2)))
                        {
                           addr0068:
                           §§push(-1);
                           if(_loc3_ && Boolean(param2))
                           {
                           }
                        }
                        else
                        {
                           addr00a3:
                           §§push(1);
                           if(_loc3_ && Boolean(param1))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(param1.orderId);
                        if(_loc4_ || Boolean(param1))
                        {
                           addr009f:
                           addr009e:
                           if(§§pop() > param2.orderId)
                           {
                              §§goto(addr00a3);
                           }
                           else
                           {
                              §§push(0);
                           }
                        }
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr009e);
            }
            addr00b8:
            return §§pop();
         }
         §§goto(addr0068);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRegister();
            if(!_loc2_)
            {
               this._playerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
               if(_loc1_ || _loc2_)
               {
                  this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  if(!_loc2_)
                  {
                     addr0069:
                     this._lastRequestTimeStamp = this._timerProxy.currentTimeStamp;
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0069);
            }
         }
         addr0074:
      }
      
      public function getNewsscreenLayerVo(param1:Boolean = false) : NewsscreenPopupVo
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._layerData);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() == null)
               {
                  if(!_loc3_)
                  {
                     this.buildVo(this._playerProxy.player.configNewsscreenList,param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr005d:
                        if(param1 != this._openedOnStartup)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr007f);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr009e);
                     }
                     addr007f:
                     §§goto(addr00a2);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr005d);
            }
            addr00a2:
            §§push(this._layerData);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().openedOnStartup = param1;
               if(!_loc3_)
               {
                  addr0099:
                  this._openedOnStartup = param1;
               }
               addr009e:
               return this._layerData;
            }
         }
         §§goto(addr009e);
      }
      
      private function buildVo(param1:ConfigNewsscreenListDTO, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:ConfigNewsscreenSlideDTO = null;
         var _loc4_:NewsScreenSlideVo = null;
         if(!(_loc7_ && param2))
         {
            this._layerData = new NewsscreenPopupVo();
            if(!(_loc7_ && Boolean(param1)))
            {
               this._layerData.openedOnStartup = param2;
            }
         }
         for each(_loc3_ in param1.slideList)
         {
            _loc4_ = new NewsScreenSlideVo();
            _loc4_.gfxId = _loc3_.gfxId;
            if(_loc8_)
            {
               _loc4_.type = _loc3_.linkType;
               if(_loc8_)
               {
                  addr00a0:
                  _loc4_.orderId = _loc3_.orderId;
                  if(_loc7_)
                  {
                     continue;
                  }
                  _loc4_.linkValue = _loc3_.linkValue;
                  if(!_loc8_)
                  {
                     continue;
                  }
                  _loc4_.localeId = _loc3_.locaId;
                  if(!_loc8_)
                  {
                     continue;
                  }
               }
               this._layerData.slides.push(_loc4_);
               continue;
            }
            §§goto(addr00a0);
         }
         if(_loc8_)
         {
            this._layerData.slides.sort(sortOnOrderId);
         }
      }
      
      public function get isEkomiUser() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:NewsScreenSlideVo = null;
         if(!(_loc5_ && Boolean(this)))
         {
            this.getNewsscreenLayerVo(this._openedOnStartup);
         }
         var _loc2_:int = 0;
         var _loc3_:* = this._layerData.slides;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ && Boolean(_loc1_))
               {
                  break;
               }
               if(_loc1_.type == NewsScreenSlideVo.EKOMI)
               {
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function get shouldRequestNewData() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._lastRequestTimeStamp);
            if(_loc1_)
            {
               §§push(DATA_REQUEST_BUFFER_TIME);
               if(!(_loc2_ && _loc2_))
               {
                  addr0039:
                  §§push(§§pop() + §§pop());
                  §§push(this._timerProxy.currentTimeStamp);
               }
               if(§§pop() < §§pop())
               {
                  if(!_loc2_)
                  {
                     this._lastRequestTimeStamp = this._timerProxy.currentTimeStamp;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006b:
                        §§push(true);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr007a:
                        return false;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr0039);
         }
         §§goto(addr006b);
      }
      
      public function refreshData() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this._layerData);
            if(_loc3_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0078);
            }
            addr0061:
            §§push(this._layerData.openedOnStartup);
            if(_loc3_)
            {
               §§push(§§pop());
            }
            _loc1_ = §§pop();
            if(_loc3_ || _loc3_)
            {
               addr0078:
               this.buildVo(this._playerProxy.player.configNewsscreenList,_loc1_);
            }
            §§goto(addr0088);
         }
         addr0088:
      }
   }
}

