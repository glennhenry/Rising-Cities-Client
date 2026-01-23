package net.bigpoint.cityrama.model.featureditems
{
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class RisingCitiesProxy extends Proxy implements IProxy
   {
      
      private var _playerProxy:PlayerProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _cvTagProxy:CvTagProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      public function RisingCitiesProxy(param1:String, param2:Object = null)
      {
         super(param1,param2);
      }
      
      protected function reset() : void
      {
         this._playerProxy = null;
         this._gameConfigProxy = null;
         this._cvTagProxy = null;
         this._playfieldProxy = null;
      }
      
      protected function get playerProxy() : PlayerProxy
      {
         if(this._playerProxy == null)
         {
            this._playerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         }
         return this._playerProxy;
      }
      
      protected function get gameConfigProxy() : GameConfigProxy
      {
         if(this._gameConfigProxy == null)
         {
            this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gameConfigProxy;
      }
      
      protected function get cvTagProxy() : CvTagProxy
      {
         if(this._cvTagProxy == null)
         {
            this._cvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         }
         return this._cvTagProxy;
      }
      
      protected function get playfieldProxy() : PlayfieldProxy
      {
         if(this._playfieldProxy == null)
         {
            this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         }
         return this._playfieldProxy;
      }
   }
}

