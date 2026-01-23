package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.AddSkillpointEvent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.ProfessionalDetailTabComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyDepartmentProfessionalDetailTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentProfessionalDetailTabMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "EmergencyDepartmentProfessionalDetailTabMediator";
      }
      
      private var _dTP:DepartmentTabProxy;
      
      private var _component:ProfessionalDetailTabComponent;
      
      private var _data:DepartmentProfessionalDetailInfoVo;
      
      public function EmergencyDepartmentProfessionalDetailTabMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super(NAME,param1);
         }
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(!this._component)
            {
               if(_loc1_)
               {
                  §§goto(addr0022);
               }
               §§goto(addr0044);
            }
            §§goto(addr003a);
         }
         addr0022:
         this._component = new ProfessionalDetailTabComponent();
         if(_loc1_ || _loc1_)
         {
            addr003a:
            this.removeListener();
            if(_loc1_)
            {
               this.setLayerData();
               addr0044:
               if(!(_loc2_ && _loc1_))
               {
                  addr0060:
                  this.container.contentGroup.addElement(this._component);
                  if(!_loc2_)
                  {
                     this.setupListener();
                     if(_loc1_ || _loc1_)
                     {
                        §§goto(addr0091);
                     }
                     §§goto(addr00ae);
                  }
               }
               §§goto(addr0091);
            }
            §§goto(addr0060);
         }
         addr0091:
         if(this._data.department == ServerTagConstants.FIRE_DEPARTMENT)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr00ae:
               sendNotification(VirtualTaskNotificationInterest.FIRE_DEPARTMENT_DETAIL_LAYER_OPENED);
            }
         }
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._data = this.departmentTabProxy.displayedProfessionalVo;
            if(_loc2_)
            {
               this._component.data = this._data;
            }
         }
      }
      
      private function setupListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._component);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               addr0048:
               §§push(this._component);
               if(_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr007f);
            }
            addr0051:
            §§pop().addEventListener(AddSkillpointEvent.ADD,this.handleSkillPointAdded);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(this._component);
               if(!_loc1_)
               {
                  addr007f:
                  §§push("buyOperation");
                  if(_loc2_)
                  {
                     §§pop().addEventListener(§§pop(),this.handleByOperation);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr00a2:
                        this._component.addEventListener("fireProfessional",this.handleFire);
                        addr009f:
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr009f);
            }
            addr00a9:
            return;
         }
         §§goto(addr0048);
      }
      
      private function handleByOperation(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               addr002a:
               sendNotification(MiniLayerConstants.OPEN_MINI_EMERGENCY_REHIRE_PROFESSIONAL,this._data.profId);
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function handleFire(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               addr001f:
               sendNotification(MiniLayerConstants.OPEN_MINI_PROFESSIONAL_FIRE,this._data.profId);
            }
            return;
         }
         §§goto(addr001f);
      }
      
      private function handleSkillPointAdded(param1:AddSkillpointEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SPEND_SKILLPOINT,{
               "profId":param1.professionalId,
               "attributeType":param1.attributeType,
               "amount":1
            });
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.onRemove();
            if(_loc2_)
            {
               this.removeListener();
            }
         }
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._component);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  addr009a:
                  §§push(this._component);
               }
               else
               {
                  §§push(this._component);
                  if(_loc1_ || _loc1_)
                  {
                     §§pop().removeEventListener(AddSkillpointEvent.ADD,this.handleSkillPointAdded);
                     if(!_loc2_)
                     {
                        §§push(this._component);
                        if(!_loc2_)
                        {
                           addr0086:
                           §§push("buyOperation");
                           if(_loc1_)
                           {
                              §§pop().removeEventListener(§§pop(),this.handleByOperation);
                              if(!_loc2_)
                              {
                                 §§goto(addr009a);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr00a1);
                        }
                        addr009e:
                        addr00a1:
                        §§pop().removeEventListener(§§pop(),this.handleFire);
                        addr00a8:
                        return;
                        §§push("fireProfessional");
                     }
                     §§goto(addr00a8);
                  }
               }
               §§goto(addr009e);
            }
            §§goto(addr0086);
         }
         §§goto(addr009a);
      }
      
      public function get container() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.DEPARTMENT_PROFESIONAL_UPDATE,ApplicationNotificationConstants.PROFESSIONALS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!(_loc4_ && _loc3_))
         {
            §§push(ApplicationNotificationConstants.DEPARTMENT_PROFESIONAL_UPDATE);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr00a0:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr00b7);
                  }
                  else
                  {
                     §§goto(addr009c);
                  }
               }
               addr009c:
               §§goto(addr009b);
            }
            addr009b:
            if(ApplicationNotificationConstants.PROFESSIONALS_CHANGED === _loc2_)
            {
               §§goto(addr00a0);
            }
            else
            {
               §§push(2);
            }
            addr00b7:
            switch(§§pop())
            {
               case 0:
                  this.setLayerData();
                  if(_loc3_)
                  {
                  }
                  break;
               case 1:
                  this.departmentTabProxy.updateDisplayedProfessional();
                  if(_loc4_)
                  {
                  }
            }
            return;
         }
         §§goto(addr00a0);
      }
      
      private function get departmentTabProxy() : DepartmentTabProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._dTP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0039:
                     this._dTP = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
                  }
               }
               return this._dTP;
            }
         }
         §§goto(addr0039);
      }
   }
}

