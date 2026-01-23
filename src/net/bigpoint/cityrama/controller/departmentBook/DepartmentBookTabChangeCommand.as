package net.bigpoint.cityrama.controller.departmentBook
{
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.view.departmentBook.EmergencyDepartmentDeactivationTabMediator;
   import net.bigpoint.cityrama.view.departmentBook.EmergencyDepartmentDetailTabMediator;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.EmergencyDepartmentBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DepartmentBookTabChangeCommand extends SimpleCommand
   {
      
      public function DepartmentBookTabChangeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:EmergencyDepartmentBook = null;
         var _loc5_:EmergencyDepartmentDetailTabMediator = null;
         var _loc6_:EmergencyDepartmentDeactivationTabMediator = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:DepartmentTabProxy = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
         if(_loc2_.container)
         {
            _loc4_ = _loc2_.container as EmergencyDepartmentBook;
            _loc5_ = facade.retrieveMediator(EmergencyDepartmentDetailTabMediator.NAME) as EmergencyDepartmentDetailTabMediator;
            _loc6_ = facade.retrieveMediator(EmergencyDepartmentDeactivationTabMediator.NAME) as EmergencyDepartmentDeactivationTabMediator;
            if(_loc4_)
            {
               switch(_loc3_.selectedIndex)
               {
                  case DepartmentTabProxy.DEPARTMENT_INDEX:
                     facade.removeMediator(EmergencyDepartmentDeactivationTabMediator.NAME);
                     this.handleSideMenu(_loc4_,true);
                     if(!_loc5_)
                     {
                        _loc5_ = new EmergencyDepartmentDetailTabMediator(_loc4_);
                        facade.registerMediator(_loc5_);
                     }
                     if(_loc2_.cat)
                     {
                        _loc5_.init(_loc2_.cat);
                     }
                     break;
                  case DepartmentTabProxy.DEACTIVATE_INDEX:
                     facade.removeMediator(EmergencyDepartmentDetailTabMediator.NAME);
                     this.handleSideMenu(_loc4_,false);
                     if(!_loc6_)
                     {
                        _loc6_ = new EmergencyDepartmentDeactivationTabMediator(_loc4_);
                        facade.registerMediator(_loc6_);
                     }
                     _loc6_.init();
               }
            }
         }
      }
      
      private function handleSideMenu(param1:EmergencyDepartmentBook, param2:Boolean = false) : void
      {
         if(param1.sideMenuComponent)
         {
            param1.sideMenuComponent.visible = param2;
            param1.sideMenuComponent.includeInLayout = param2;
         }
      }
   }
}

