package net.bigpoint.cityrama.view.emergencyBook
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.CoverageInfoComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyCoverageMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyCoverageMediator";
      
      public function EmergencyCoverageMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
         this.setupInitialValues();
      }
      
      private function setupListeners() : void
      {
         this.component.checkBox.addEventListener(MouseEvent.CLICK,this.handleToggleCheckBox);
         this.component.addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
      }
      
      private function handleRemoved(param1:Event) : void
      {
         this.component.removeEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
         facade.removeMediator(NAME);
      }
      
      private function setupInitialValues() : void
      {
         var _loc1_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc2_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc3_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         this.component.data = _loc1_.getEmergencyZoneLayerVo(_loc3_.billboardObjectVo);
         this.component.checkBox.selected = !_loc2_.userdata.showEmergencyZoneLayer;
      }
      
      override public function getMediatorName() : String
      {
         return EmergencyCoverageMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function get component() : CoverageInfoComponent
      {
         return super.viewComponent as CoverageInfoComponent;
      }
      
      private function handleToggleCheckBox(param1:Event) : void
      {
         var _loc2_:Boolean = Boolean(this.component.checkBox.selected);
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         _loc3_.userdata.showEmergencyZoneLayer = !_loc2_;
         _loc3_.flush();
      }
   }
}

