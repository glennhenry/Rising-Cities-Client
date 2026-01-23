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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:EmergencyDepartmentBook = null;
         var _loc5_:EmergencyDepartmentDetailTabMediator = null;
         var _loc6_:EmergencyDepartmentDeactivationTabMediator = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:DepartmentTabProxy = facade.retrieveProxy(DepartmentTabProxy.NAME) as DepartmentTabProxy;
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            if(_loc2_.container)
            {
               addr0059:
               _loc4_ = _loc2_.container as EmergencyDepartmentBook;
               _loc5_ = facade.retrieveMediator(EmergencyDepartmentDetailTabMediator.NAME) as EmergencyDepartmentDetailTabMediator;
               _loc6_ = facade.retrieveMediator(EmergencyDepartmentDeactivationTabMediator.NAME) as EmergencyDepartmentDeactivationTabMediator;
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  if(_loc4_)
                  {
                     addr0195:
                     §§push(_loc3_.selectedIndex);
                     if(_loc9_)
                     {
                        var _loc7_:* = §§pop();
                        if(!_loc8_)
                        {
                           §§push(DepartmentTabProxy.DEPARTMENT_INDEX);
                           if(_loc9_ || Boolean(_loc2_))
                           {
                              §§push(_loc7_);
                              if(!(_loc8_ && Boolean(_loc2_)))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       §§push(0);
                                       if(_loc9_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr0211:
                                       §§push(1);
                                       if(_loc9_ || Boolean(_loc2_))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(DepartmentTabProxy.DEACTIVATE_INDEX);
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       addr020d:
                                       if(§§pop() === _loc7_)
                                       {
                                          §§goto(addr0211);
                                       }
                                       else
                                       {
                                          §§push(2);
                                       }
                                    }
                                 }
                                 addr0233:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       facade.removeMediator(EmergencyDepartmentDeactivationTabMediator.NAME);
                                       if(!_loc8_)
                                       {
                                          this.handleSideMenu(_loc4_,true);
                                          if(_loc9_ || Boolean(_loc2_))
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr0158:
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      _loc6_ = new EmergencyDepartmentDeactivationTabMediator(_loc4_);
                                                      if(_loc9_)
                                                      {
                                                         facade.registerMediator(_loc6_);
                                                      }
                                                   }
                                                   _loc6_.init();
                                                   if(_loc9_)
                                                   {
                                                   }
                                                   break;
                                                }
                                                addr00dc:
                                                _loc5_ = new EmergencyDepartmentDetailTabMediator(_loc4_);
                                                if(_loc9_)
                                                {
                                                   facade.registerMediator(_loc5_);
                                                }
                                             }
                                             if(_loc2_.cat)
                                             {
                                                if(_loc9_)
                                                {
                                                   _loc5_.init(_loc2_.cat);
                                                   if(_loc8_ && Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr00dc);
                                    case 1:
                                       facade.removeMediator(EmergencyDepartmentDetailTabMediator.NAME);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       this.handleSideMenu(_loc4_,false);
                                       if(_loc8_ && Boolean(param1))
                                       {
                                          break;
                                       }
                                       §§goto(addr0158);
                                 }
                                 addr0241:
                                 return;
                                 addr0231:
                              }
                              §§goto(addr020d);
                           }
                           §§goto(addr0231);
                        }
                        §§goto(addr0211);
                     }
                     §§goto(addr0233);
                  }
                  §§goto(addr0241);
               }
               §§goto(addr0195);
            }
            §§goto(addr0241);
         }
         §§goto(addr0059);
      }
      
      private function handleSideMenu(param1:EmergencyDepartmentBook, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1.sideMenuComponent);
            if(!(_loc4_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(param1.sideMenuComponent);
                     if(_loc3_ || param2)
                     {
                        §§push(param2);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§pop().visible = §§pop();
                           if(_loc3_)
                           {
                              addr007d:
                              param1.sideMenuComponent.includeInLayout = param2;
                              addr007c:
                              addr0078:
                           }
                           §§goto(addr007f);
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0078);
               }
               addr007f:
               return;
            }
            §§goto(addr007c);
         }
         §§goto(addr0078);
      }
   }
}

