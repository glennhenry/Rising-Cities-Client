package net.bigpoint.cityrama.model.urbies
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SpawnProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SpawnProxy";
      
      private var _userLevelProxy:UserLevelProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _enabled:Boolean = true;
      
      public function SpawnProxy(param1:Object = null)
      {
         super(NAME,param1);
         this._resourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
         this._userLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
      }
      
      public function get maxAllowed() : int
      {
         var _loc2_:int = 0;
         if(!this._enabled)
         {
            return 0;
         }
         if(this._userLevelProxy)
         {
            _loc2_ = 0;
            if(this._userLevelProxy.getConfigByLevelId(0))
            {
               _loc2_ = this._userLevelProxy.getConfigByLevelId(0).level;
            }
            if(_loc2_ >= 30)
            {
               return 20;
            }
            if(_loc2_ >= 25)
            {
               return 15;
            }
            if(_loc2_ >= 20)
            {
               return 12;
            }
            if(_loc2_ >= 15)
            {
               return 8;
            }
            if(_loc2_ >= 10)
            {
               return 5;
            }
            if(_loc2_ >= 8)
            {
               return 4;
            }
            if(_loc2_ >= 6)
            {
               return 3;
            }
            if(_loc2_ >= 4)
            {
               return 2;
            }
            if(_loc2_ >= 2)
            {
               return 1;
            }
         }
         return 0;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
         if(!this._enabled)
         {
            facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         }
      }
   }
}

