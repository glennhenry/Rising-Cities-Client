package net.bigpoint.cityrama.view.miniLayer
{
   import flash.external.ExternalInterface;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.view.common.skins.MiniLayerSkin;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.FatalErrorMiniLayer;
   import net.bigpoint.cityrama.view.quest.QuestSideMenuMediator;
   import net.bigpoint.cityrama.view.settingsbar.SettingsBarMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FatalErrorMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FatalErrorMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "FatalErrorMiniLayerMediator";
      }
      
      public function FatalErrorMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).kill();
            if(!(_loc1_ && Boolean(this)))
            {
               (facade.retrieveMediator(SettingsBarMediator.NAME) as SettingsBarMediator).kill();
               if(!_loc1_)
               {
                  (facade.retrieveMediator(QuestSideMenuMediator.NAME) as QuestSideMenuMediator).kill();
                  if(!_loc1_)
                  {
                     addr0078:
                     (facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy).isEnabled = false;
                     if(_loc2_)
                     {
                        §§goto(addr0090);
                     }
                     §§goto(addr00f0);
                  }
                  addr0090:
                  §§push(this.componentSkin);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop().closeButton);
                     if(_loc2_)
                     {
                        §§push(false);
                        if(_loc2_)
                        {
                           §§pop().visible = §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr00d2);
                           }
                           §§goto(addr00d9);
                        }
                        addr00d2:
                        this.componentSkin.closeButton.includeInLayout = false;
                        §§goto(addr00d1);
                     }
                     addr00d1:
                     §§goto(addr00c4);
                  }
                  addr00c4:
                  §§goto(addr00bf);
               }
               §§goto(addr00f0);
            }
            §§goto(addr0078);
         }
         addr00bf:
         if(_loc2_)
         {
            addr00d9:
            if(ExternalInterface.available)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr00f0:
                  ExternalInterface.call("closeMarketPlace()");
                  if(_loc1_)
                  {
                  }
               }
            }
            else
            {
               Alert.show("ExternalInterface.call(\'closeMarketPlace()\') - Only Live");
            }
         }
      }
      
      private function get componentSkin() : MiniLayerSkin
      {
         var _loc1_:FatalErrorMiniLayer = super.viewComponent as FatalErrorMiniLayer;
         return _loc1_.skin as MiniLayerSkin;
      }
   }
}

