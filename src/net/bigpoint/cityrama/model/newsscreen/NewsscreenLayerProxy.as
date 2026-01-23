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
      
      private static const DATA_REQUEST_BUFFER_TIME:Number = 1000 * 60 * 5;
      
      private var _playerProxy:PlayerProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _layerData:NewsscreenPopupVo;
      
      private var _openedOnStartup:Boolean;
      
      private var _lastRequestTimeStamp:Number;
      
      public function NewsscreenLayerProxy(param1:String = "NewsscreenLayerProxy", param2:Object = null)
      {
         super(param1,param2);
      }
      
      private static function sortOnOrderId(param1:NewsScreenSlideVo, param2:NewsScreenSlideVo) : int
      {
         return param1.orderId < param2.orderId ? -1 : (param1.orderId > param2.orderId ? 1 : 0);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._playerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._lastRequestTimeStamp = this._timerProxy.currentTimeStamp;
      }
      
      public function getNewsscreenLayerVo(param1:Boolean = false) : NewsscreenPopupVo
      {
         if(this._layerData == null)
         {
            this.buildVo(this._playerProxy.player.configNewsscreenList,param1);
         }
         if(param1 != this._openedOnStartup)
         {
            this._layerData.openedOnStartup = param1;
            this._openedOnStartup = param1;
         }
         return this._layerData;
      }
      
      private function buildVo(param1:ConfigNewsscreenListDTO, param2:Boolean = false) : void
      {
         var _loc3_:ConfigNewsscreenSlideDTO = null;
         var _loc4_:NewsScreenSlideVo = null;
         this._layerData = new NewsscreenPopupVo();
         this._layerData.openedOnStartup = param2;
         for each(_loc3_ in param1.slideList)
         {
            _loc4_ = new NewsScreenSlideVo();
            _loc4_.gfxId = _loc3_.gfxId;
            _loc4_.type = _loc3_.linkType;
            _loc4_.orderId = _loc3_.orderId;
            _loc4_.linkValue = _loc3_.linkValue;
            _loc4_.localeId = _loc3_.locaId;
            this._layerData.slides.push(_loc4_);
         }
         this._layerData.slides.sort(sortOnOrderId);
      }
      
      public function get isEkomiUser() : Boolean
      {
         var _loc1_:NewsScreenSlideVo = null;
         this.getNewsscreenLayerVo(this._openedOnStartup);
         for each(_loc1_ in this._layerData.slides)
         {
            if(_loc1_.type == NewsScreenSlideVo.EKOMI)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get shouldRequestNewData() : Boolean
      {
         if(this._lastRequestTimeStamp + DATA_REQUEST_BUFFER_TIME < this._timerProxy.currentTimeStamp)
         {
            this._lastRequestTimeStamp = this._timerProxy.currentTimeStamp;
            return true;
         }
         return false;
      }
      
      public function refreshData() : void
      {
         var _loc1_:Boolean = false;
         if(this._layerData)
         {
            _loc1_ = this._layerData.openedOnStartup;
         }
         this.buildVo(this._playerProxy.player.configNewsscreenList,_loc1_);
      }
   }
}

