package net.bigpoint.cityrama.view.emergencyBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencyDataGridComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SpecialistDetailsListComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SpecialistDetailGridMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "SpecialistDetailGridMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && SpecialistDetailGridMediator))
      {
         NAME = "SpecialistDetailGridMediator";
      }
      
      public var slotNumber:Number;
      
      private var _eLP:EmergencyLayerProxy;
      
      private var _eBM:EmergencyBookMediator;
      
      public function SpecialistDetailGridMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super(NAME,param1);
            if(!(_loc2_ && Boolean(this)))
            {
               addr0036:
               this.component.addEventListener(EmergencyDataGridComponent.ITEM_SELECTED,this.handleItemSelected);
            }
            return;
         }
         §§goto(addr0036);
      }
      
      private function handleItemSelected(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ProfessionalListInfoVo = param1.target.selectedItem as ProfessionalListInfoVo;
         if(_loc3_)
         {
            if(_loc2_.operationsLeft > 0)
            {
               if(_loc3_ || Boolean(this))
               {
                  facade.sendNotification(ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY,_loc2_);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                  }
               }
            }
            else
            {
               facade.sendNotification(MiniLayerConstants.OPEN_MINI_EMERGENCY_REHIRE_PROFESSIONAL,_loc2_.profId);
            }
         }
      }
      
      override public function getMediatorName() : String
      {
         return SpecialistDetailGridMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PROFESSIONALS_CHANGED];
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(!(_loc1_ && _loc2_))
            {
               addr0028:
               this.setupListeners();
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.component.addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
         }
      }
      
      private function handleRemoved(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.component.removeEventListener(Event.REMOVED_FROM_STAGE,this.handleRemoved);
            if(!_loc3_)
            {
               facade.removeMediator(NAME);
            }
         }
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:EmergencyAssignListVo = null;
         var _loc3_:* = param1.getName();
         if(!_loc4_)
         {
            if(ApplicationNotificationConstants.PROFESSIONALS_CHANGED === _loc3_)
            {
               addr008d:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  _loc2_ = this.emergencyLayerProxy.getEmergencyAssignListVo(this.emergencyBookMediator.billboardObjectVo,this.component.data.slotIndex);
                  if(_loc5_ || Boolean(param1))
                  {
                     this.component.data = _loc2_;
                  }
            }
            return;
         }
         §§goto(addr008d);
      }
      
      private function get emergencyLayerProxy() : EmergencyLayerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._eLP);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     this._eLP = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
                  }
               }
               addr004c:
               return this._eLP;
            }
         }
         §§goto(addr004c);
      }
      
      private function get emergencyBookMediator() : EmergencyBookMediator
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._eBM);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._eBM = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
                  }
               }
               addr0067:
               return this._eBM;
            }
         }
         §§goto(addr0067);
      }
      
      public function get component() : SpecialistDetailsListComponent
      {
         return super.viewComponent as SpecialistDetailsListComponent;
      }
   }
}

