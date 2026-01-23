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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "EmergencyCoverageMediator";
      }
      
      public function EmergencyCoverageMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRegister();
            if(!(_loc2_ && Boolean(this)))
            {
               this.setupListeners();
               if(!_loc2_)
               {
                  this.setupInitialValues();
               }
            }
         }
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               §§pop().checkBox.addEventListener(MouseEvent.CLICK,this.handleToggleCheckBox);
               if(_loc1_)
               {
                  addr004f:
                  this.component.addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
                  addr004c:
               }
               return;
            }
            §§goto(addr004f);
         }
         §§goto(addr004c);
      }
      
      private function handleRemoved(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.component.removeEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
            if(!(_loc2_ && _loc2_))
            {
               addr0048:
               facade.removeMediator(NAME);
            }
            return;
         }
         §§goto(addr0048);
      }
      
      private function setupInitialValues() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc2_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc3_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§push(this.component);
            if(!_loc5_)
            {
               §§pop().data = _loc1_.getEmergencyZoneLayerVo(_loc3_.billboardObjectVo);
               if(!_loc5_)
               {
                  addr0090:
                  this.component.checkBox.selected = !_loc2_.userdata.showEmergencyZoneLayer;
               }
               §§goto(addr009e);
            }
            §§goto(addr0090);
         }
         addr009e:
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Boolean = Boolean(this.component.checkBox.selected);
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         if(_loc4_ || _loc2_)
         {
            §§push(_loc3_.userdata);
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            §§pop().showEmergencyZoneLayer = §§pop();
            if(!(_loc5_ && Boolean(this)))
            {
               _loc3_.flush();
            }
         }
      }
   }
}

