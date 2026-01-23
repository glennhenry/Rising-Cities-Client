package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.view.common.skins.MiniLayerSkin;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConnectionLostMiniLayer;
   import net.bigpoint.cityrama.view.quest.QuestSideMenuMediator;
   import net.bigpoint.cityrama.view.settingsbar.SettingsBarMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ConnectionLostMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ConnectionLostMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || ConnectionLostMiniLayerMediator)
      {
         NAME = "ConnectionLostMiniLayerMediator";
      }
      
      public function ConnectionLostMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc4_)
            {
               this.addListener();
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(this.componentSkin);
                  if(_loc4_)
                  {
                     §§push(§§pop().closeButton);
                     if(_loc4_)
                     {
                        §§push(false);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§pop().visible = §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              addr008f:
                              this.componentSkin.closeButton.includeInLayout = false;
                              addr008e:
                              addr008b:
                              addr0087:
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0087);
            }
            addr0091:
            return;
         }
         §§goto(addr0087);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.component.addEventListener(Event.CLOSE,this.finalCall);
         }
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.component.removeEventListener(Event.CLOSE,this.finalCall);
            if(!_loc1_)
            {
               super.onRemove();
            }
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            (facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator).kill();
            if(!(_loc2_ && _loc1_))
            {
               (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).kill();
               if(_loc1_)
               {
                  (facade.retrieveMediator(SettingsBarMediator.NAME) as SettingsBarMediator).kill();
                  if(_loc1_ || _loc2_)
                  {
                     (facade.retrieveMediator(QuestSideMenuMediator.NAME) as QuestSideMenuMediator).kill();
                     if(_loc1_ || Boolean(this))
                     {
                        (facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy).isEnabled = false;
                        if(_loc1_ || _loc1_)
                        {
                           addr00c1:
                           if(ExternalInterface.available)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 addr00d8:
                                 ExternalInterface.call("closeMarketPlace()");
                                 if(_loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              Alert.show("ExternalInterface.call(\'closeMarketPlace()\') - Only Live");
                           }
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr00c1);
            }
            addr00f7:
            return;
         }
         §§goto(addr00c1);
      }
      
      public function get component() : ConnectionLostMiniLayer
      {
         return super.viewComponent as ConnectionLostMiniLayer;
      }
      
      public function get componentSkin() : MiniLayerSkin
      {
         var _loc1_:ConnectionLostMiniLayer = super.viewComponent as ConnectionLostMiniLayer;
         return _loc1_.skin as MiniLayerSkin;
      }
   }
}

