package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flashx.textLayout.conversion.TextConverter;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.PlacementImpossibleMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PlacementImpossibleMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "PlacementImpossibleMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "PlacementImpossibleMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      private var _hasEnoughPermissions:Boolean;
      
      public function PlacementImpossibleMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super(param1,param2);
            if(!_loc3_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               §§goto(addr002b);
            }
            §§goto(addr0055);
         }
         addr002b:
         if(!(_loc3_ && Boolean(this)))
         {
            addr0055:
            §§push(this.component);
            if(_loc4_ || Boolean(param1))
            {
               §§pop().acceptNoPlacement.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
               if(!_loc3_)
               {
                  addr0088:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
               }
               §§goto(addr0095);
            }
            §§goto(addr0088);
         }
         addr0095:
      }
      
      private function finalCall(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleButtonClick(null);
         }
      }
      
      private function setFlavourText() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._hasEnoughPermissions)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(_loc2_)
                  {
                     §§push(§§pop().flavourText);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop().textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.placement"),String("rcl.miniLayer.placement.flavour.money")),TextConverter.TEXT_FIELD_HTML_FORMAT);
                        if(_loc1_ && _loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr0099:
                        §§pop().textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.placement"),String("rcl.miniLayer.placement.flavour.permission")),TextConverter.TEXT_FIELD_HTML_FORMAT);
                     }
                     §§goto(addr00c4);
                  }
                  else
                  {
                     addr0096:
                     §§push(§§pop().flavourText);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00c4);
            }
            else
            {
               §§push(this.component);
            }
            §§goto(addr0096);
         }
         addr00c4:
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(_loc2_ || _loc2_)
            {
               §§push(this.component);
               if(!_loc3_)
               {
                  §§pop().removeEventListener(Event.CLOSE,this.finalCall);
                  if(_loc2_)
                  {
                     this.component.acceptNoPlacement.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
                     addr0055:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                        if(_loc2_ || Boolean(param1))
                        {
                           addr0097:
                           this.resetMode();
                        }
                     }
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0055);
            }
            addr009d:
            return;
         }
         §§goto(addr0097);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRemove();
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr0032);
            }
            §§goto(addr0049);
         }
         addr0032:
         this.component.acceptNoPlacement.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
         if(_loc2_)
         {
            addr0049:
            this.resetMode();
         }
      }
      
      private function resetMode() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.mode = ApplicationModeProxy.MODE_NORMAL;
         }
      }
      
      public function get component() : PlacementImpossibleMiniLayer
      {
         return super.viewComponent as PlacementImpossibleMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._hasEnoughPermissions = param1 as Boolean;
            if(_loc2_ || _loc2_)
            {
               addr002e:
               this.setFlavourText();
            }
            return;
         }
         §§goto(addr002e);
      }
   }
}

