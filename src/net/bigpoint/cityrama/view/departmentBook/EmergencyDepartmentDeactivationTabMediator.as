package net.bigpoint.cityrama.view.departmentBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentDeactivationTab;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyDepartmentDeactivationTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyDepartmentDeactivationTabMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && EmergencyDepartmentDeactivationTabMediator))
      {
         NAME = "EmergencyDepartmentDeactivationTabMediator";
      }
      
      private var _pfOP:PlayfieldObjectsProxy;
      
      private var _eP:EmergencyProxy;
      
      private var _component:EmergencyDepartmentDeactivationTab;
      
      private var _currentLayerState:String;
      
      public function EmergencyDepartmentDeactivationTabMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super(NAME,param1);
         }
      }
      
      public function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(!this._component)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this._component = new EmergencyDepartmentDeactivationTab();
                  if(_loc2_ || Boolean(this))
                  {
                     addr0057:
                     this.setLayerData();
                     if(_loc2_)
                     {
                        addr0062:
                        this.container.contentGroup.addElement(this._component);
                        if(_loc2_)
                        {
                           addr0076:
                           this.setupListener();
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0076);
               }
               addr007c:
               return;
            }
            §§goto(addr0057);
         }
         §§goto(addr0062);
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._currentLayerState = this.currentLayerState;
            if(!(_loc1_ && _loc1_))
            {
               if(this._currentLayerState != "")
               {
                  if(!_loc1_)
                  {
                     addr0045:
                     this.component.data = this._currentLayerState;
                  }
               }
               return;
            }
         }
         §§goto(addr0045);
      }
      
      private function get currentLayerState() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(this.playfieldObjectsProxy.infrastructureBuildingList.length == 0)
            {
               if(_loc2_)
               {
                  §§push(EmergencyDepartmentDeactivationTab.STATE_DEACTIVATED);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0060:
                  if(this.emergencyProxy.emergencyActivelyRunning)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr0079:
                        §§push(EmergencyDepartmentDeactivationTab.STATE_ACTIVE_EMERGENCY_RUNNING);
                        if(_loc2_)
                        {
                           §§goto(addr0084);
                        }
                     }
                     else
                     {
                        addr0085:
                        return EmergencyDepartmentDeactivationTab.STATE_ACTIVE;
                     }
                     return §§pop();
                  }
                  §§goto(addr0085);
               }
               addr0084:
               return §§pop();
            }
            §§goto(addr0060);
         }
         §§goto(addr0079);
      }
      
      private function setupListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.component.addEventListener(EmergencyDepartmentDeactivationTab.EVENT_DEACTIVATE_EMERGENCIES,this.handleDeactivate);
         }
      }
      
      private function handleDeactivate(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr003e);
            }
            §§goto(addr004d);
         }
         addr003e:
         sendNotification(ApplicationNotificationConstants.DEACTIVATE_EMERGENCY_FEATURE);
         if(!_loc3_)
         {
            addr004d:
            this.component.data = EmergencyDepartmentDeactivationTab.STATE_DEACTIVATED;
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.removeListener();
            if(!_loc2_)
            {
               addr0028:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0044:
                     this.component.removeEventListener(EmergencyDepartmentDeactivationTab.EVENT_DEACTIVATE_EMERGENCIES,this.handleDeactivate);
                     addr0041:
                  }
               }
               return;
            }
            §§goto(addr0044);
         }
         §§goto(addr0041);
      }
      
      public function get container() : EmergencyDepartmentBook
      {
         return super.viewComponent as EmergencyDepartmentBook;
      }
      
      public function get component() : EmergencyDepartmentDeactivationTab
      {
         return this._component;
      }
      
      private function get emergencyProxy() : EmergencyProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._eP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0039:
                     this._eP = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
                  }
               }
               return this._eP;
            }
         }
         §§goto(addr0039);
      }
      
      private function get playfieldObjectsProxy() : PlayfieldObjectsProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._pfOP);
            if(_loc1_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr0041:
                     this._pfOP = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  }
               }
               return this._pfOP;
            }
         }
         §§goto(addr0041);
      }
   }
}

