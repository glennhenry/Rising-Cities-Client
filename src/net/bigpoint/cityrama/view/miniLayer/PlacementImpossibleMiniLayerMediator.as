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
      
      private var _soundProxy:SoundProxy;
      
      private var _hasEnoughPermissions:Boolean;
      
      public function PlacementImpossibleMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.component.acceptNoPlacement.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event) : void
      {
         this.handleButtonClick(null);
      }
      
      private function setFlavourText() : void
      {
         if(this._hasEnoughPermissions)
         {
            this.component.flavourText.textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.placement"),String("rcl.miniLayer.placement.flavour.money")),TextConverter.TEXT_FIELD_HTML_FORMAT);
         }
         else
         {
            this.component.flavourText.textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.placement"),String("rcl.miniLayer.placement.flavour.permission")),TextConverter.TEXT_FIELD_HTML_FORMAT);
         }
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.acceptNoPlacement.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         this.resetMode();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.acceptNoPlacement.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
         this.resetMode();
      }
      
      private function resetMode() : void
      {
         var _loc1_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         _loc1_.mode = ApplicationModeProxy.MODE_NORMAL;
      }
      
      public function get component() : PlacementImpossibleMiniLayer
      {
         return super.viewComponent as PlacementImpossibleMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         this._hasEnoughPermissions = param1 as Boolean;
         this.setFlavourText();
      }
   }
}

