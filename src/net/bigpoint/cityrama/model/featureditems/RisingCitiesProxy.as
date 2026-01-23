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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      protected function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._playerProxy = null;
            if(_loc2_)
            {
               this._gameConfigProxy = null;
               if(!(_loc1_ && _loc2_))
               {
                  this._cvTagProxy = null;
                  if(_loc2_ || _loc1_)
                  {
                     addr004e:
                     this._playfieldProxy = null;
                  }
                  return;
               }
            }
         }
         §§goto(addr004e);
      }
      
      protected function get playerProxy() : PlayerProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._playerProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr003b:
                     this._playerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  }
               }
               return this._playerProxy;
            }
         }
         §§goto(addr003b);
      }
      
      protected function get gameConfigProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._gameConfigProxy);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               addr004a:
               return this._gameConfigProxy;
            }
         }
         §§goto(addr004a);
      }
      
      protected function get cvTagProxy() : CvTagProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._cvTagProxy);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr003a:
                     this._cvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
                  }
               }
               return this._cvTagProxy;
            }
         }
         §§goto(addr003a);
      }
      
      protected function get playfieldProxy() : PlayfieldProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._playfieldProxy);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                  }
               }
               addr0067:
               return this._playfieldProxy;
            }
         }
         §§goto(addr0067);
      }
   }
}

