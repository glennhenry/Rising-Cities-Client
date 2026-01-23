package net.bigpoint.cityrama.view.worldmap
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldLightVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.event.SimpleEvent;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class WorldMapLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "WorldMapLayerMediator";
      
      private var _showCloseButton:Boolean;
      
      public function WorldMapLayerMediator(param1:String, param2:*)
      {
         super(param1,param2);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is Boolean)
         {
            this._showCloseButton = param1 as Boolean;
            this.collectPlayfieldData();
            this.component.setData(this._showCloseButton);
         }
      }
      
      private function collectPlayfieldData() : void
      {
         var _loc1_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         var _loc2_:Array = [true,_loc1_.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH),_loc1_.isFeatureEnabled(ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH),_loc1_.isFeatureEnabled(ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH)];
         this.component.setValidPlayfields(_loc2_);
      }
      
      public function get component() : WorldMapLayer
      {
         return viewComponent as WorldMapLayer;
      }
      
      override public function onRegister() : void
      {
         this.addListeners();
      }
      
      override public function onRemove() : void
      {
         this.removeListeners();
         facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI,true);
      }
      
      private function addListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.finalCall);
         this.component.addEventListener(WorldMapLayer.EVENT_PLAYFIELD_SELECTED,this.onPlayfieldSelected);
      }
      
      private function removeListeners() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.removeEventListener(WorldMapLayer.EVENT_PLAYFIELD_SELECTED,this.onPlayfieldSelected);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function onPlayfieldSelected(param1:SimpleEvent) : void
      {
         var _loc2_:int = param1.data as int;
         var _loc3_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         if(Boolean(_loc3_) && Boolean(_loc3_.config))
         {
            if(_loc3_.config.id == _loc2_)
            {
               this.finalCall();
               return;
            }
            if(this.isValidPlayfield(_loc2_))
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,_loc2_);
            }
         }
         else if(this.isValidPlayfield(_loc2_))
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,_loc2_);
         }
      }
      
      private function isValidPlayfield(param1:int) : Boolean
      {
         var _loc3_:PlayfieldLightVo = null;
         var _loc2_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         for each(_loc3_ in _loc2_.city.playfields)
         {
            if(_loc3_.configId == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}

